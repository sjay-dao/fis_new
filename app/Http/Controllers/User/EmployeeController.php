<?php

namespace App\Http\Controllers\User;

use App\Employee;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;
use Intervention\Image\Facades\Image;
use Brian2694\Toastr\Facades\Toastr;
use PDF;

class EmployeeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $employees = Employee::where('adoptor_id',Auth::user()->adoptor->id)->get();
    return view('user.employee.index',compact('employees'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
       
        return view('user.employee.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'firstName' => 'required',
            'lastName' => 'required',
            'contactNo' => 'required',
            'position' => 'required',
            'age' => 'required',
            'gender' => 'required',
            'nationality' => 'required',
            'image' => 'mimes:jpeg,bmp,png,jpg|required',
        ]);
        $check = Employee::where('firstName',$request->firstName)->where('lastName',$request->lastName)->count();
        if($check >=1){
            Toastr::info('Employee is already existed in the database','Message');
            return redirect()->route('user.employee.index');
        }
        $image = $request->file('image');
        $slug = str_slug($request->firstName);
        if(isset($image))
        {
            $currentDate = Carbon::now()->toDateString();
            $imageName = $slug.'='.$currentDate.'='.uniqid().'.'.$image->getClientOriginalExtension();
            if(!Storage::disk('public')->exists('employees'))
            {
                Storage::disk('public')->makeDirectory('employees');
            }
           // resize_image for category and upload
           $emp_image = Image::make($image)->resize(180,180)->save(90);
           Storage::disk('public')->put('employees/'.$imageName,$emp_image);
        } else {
            $imageName = 'default.jpg';
        }
        $employee = new Employee();
        $employee->adoptor_id = Auth::user()->adoptor_id;
        $employee->firstName = $request->firstName;
        $employee->middleName = $request->middleName;
        $employee->lastName = $request->lastName;
        $employee->email = $request->email;
        $employee->contactNo = $request->contactNo;
        $employee->position = $request->position;
        $employee->age = $request->age;
        $employee->gender = $request->gender;
        $employee->nationality = $request->nationality;
        $employee->picture = $imageName;
        $employee->save();
        Toastr::success('Successfully Added','Success');
            return redirect()->route('user.employee.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Employee  $employee
     * @return \Illuminate\Http\Response
     */
    public function show(Employee $employee)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Employee  $employee
     * @return \Illuminate\Http\Response
     */
    public function edit(Employee $employee)
    {
        if($employee->adoptor_id != Auth::user()->adoptor->id){
            Toastr::error('Sorry you are not allowed to make this action','Message');
            return redirect()->route('user.employee.index');
        }
        return view('user.employee.edit',compact('employee'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Employee  $employee
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Employee $employee)
    {
        $this->validate($request, [
            'firstName' => 'required',
            'lastName' => 'required',
            'contactNo' => 'required',
            'position' => 'required',
            'age' => 'required',
            'gender' => 'required',
            'nationality' => 'required',
        ]);
        $check = Employee::where('firstName',$request->firstName)->where('lastName',$request->lastName)->count();
        if($check >=2){
            Toastr::info('Employee is already existed in the database','Message');
            return redirect()->route('user.employee.index');
        }
        $image = $request->file('image');
        $slug = str_slug($request->firstName);
        if(isset($image))
        {
            $currentDate = Carbon::now()->toDateString();
            $imageName = $slug.'='.$currentDate.'='.uniqid().'.'.$image->getClientOriginalExtension();
            if(!Storage::disk('public')->exists('employees'))
            {
                Storage::disk('public')->makeDirectory('employees');
            }
             // delete old image
             if(Storage::disk('public')->exists('employees/'.$employee->picture))
             {
                 Storage::disk('public')->delete('employees/'.$employee->picture);
             }
           // resize_image for category and upload
           $emp_image = Image::make($image)->resize(180,180)->save(90);
           Storage::disk('public')->put('employees/'.$imageName,$emp_image);
        } else {
            $imageName = $employee->picture;
        }
        $employee->adoptor_id = Auth::user()->adoptor_id;
        $employee->firstName = $request->firstName;
        $employee->middleName = $request->middleName;
        $employee->lastName = $request->lastName;
        $employee->email = $request->email;
        $employee->contactNo = $request->contactNo;
        $employee->position = $request->position;
        $employee->age = $request->age;
        $employee->gender = $request->gender;
        $employee->nationality = $request->nationality;
        $employee->picture = $imageName;
        $employee->save();
        Toastr::success('Successfully Updated','Success');
            return redirect()->route('user.employee.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Employee  $employee
     * @return \Illuminate\Http\Response
     */
    public function destroy(Employee $employee)
    {
        if($employee->adoptor_id != Auth::user()->adoptor->id){
            Toastr::error('Sorry you are not allowed to make this action','Message');
            return redirect()->route('user.employee.index');
        }
        $employee->delete();
        if(Storage::disk('public')->exists('employees/'.$employee->picture))
        {
            Storage::disk('public')->delete('employees/'.$employee->picture);
        }
        Toastr::success('Successfully Deleted !!!','Message');
            return redirect()->route('user.employee.index');
    }
    public function report()
    {
        $data = Employee::where('adoptor_id',Auth::user()->adoptor->id)->get();
        $pdf = PDF::loadView('user.employee.report',compact('data'))->setPaper('a4', 'landscape');
        return $pdf->stream('eTransmotion-report.pdf');
    }
}
