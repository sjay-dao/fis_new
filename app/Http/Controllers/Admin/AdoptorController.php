<?php

namespace App\Http\Controllers\Admin;

use App\Adoptor;
use App\Client;
use App\Employee;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Region;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\Storage;
use Brian2694\Toastr\Facades\Toastr;
use Intervention\Image\Facades\Image;
use App\Equipment;
use App\OtherEquipment;
use App\Product;
use App\ProductSample;
use App\RawMaterial;
use App\Reject;
use PDF;
use App\Sale;
use App\Supplier;
use App\User;
use Charts;
use DB;

class AdoptorController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $adoptors = Adoptor::all();
        return view('admin.adoptor.index',compact('adoptors'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $technologies = Product::all();
        $rawMats = RawMaterial::all();
        $equipments = Equipment::all();
        $regions = Region::all();
        return view('admin.adoptor.create',compact('regions','equipments','rawMats','technologies'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request,[
            'name' => 'required',
            'address' => 'required',
            'equipments' => 'required',
            // 'rawMats' => 'required',
            'technology' => 'required',
            'region' => 'required',
            'image' => 'required|image|mimes:jpeg,bmp,png,jpg',
            'mobile' => 'required|max:12',
            'about' => 'required|min:15',
            'email' => 'required|email',
            'scale' => 'required'
        ]);
        $image = $request->file('image');
        $slug = str_slug($request->name);
        $status = true;
        if(isset($image))
        {
            $currentDate = Carbon::now()->toDateString();
            $imageName = $slug.'-'.$currentDate.'-'.uniqid().'.'.$image->getClientOriginalExtension();
            if(!Storage::disk('public')->exists('adoptors'))
            {
                Storage::disk('public')->makeDirectory('adoptors');
            }
            $adop = Image::make($image)->resize(800,600)->save(90);
            Storage::disk('public')->put('adoptors/'.$imageName,$adop);

            if(!Storage::disk('public')->exists('adoptors/background'))
            {
                Storage::disk('public')->makeDirectory('adoptors/background');
            }
            $adop = Image::make($image)->resize(1600,479)->save(90);
            Storage::disk('public')->put('adoptors/background/'.$imageName,$adop);
        }else {
            $imageName = "default.png";
        }
        $adoptor = new Adoptor();
        $adoptor->name = $request->name;
        $adoptor->slug = $slug;
        $adoptor->address = $request->address;
        $adoptor->map = $request->map;
        $adoptor->region_id = $request->region;
        $adoptor->image = $imageName;
        $adoptor->mobile = $request->mobile;
        $adoptor->telephone = $request->telephone;
        $adoptor->fax = $request->fax;
        $adoptor->about = $request->about;
        $adoptor->facebook = $request->facebook;
        $adoptor->twitter = $request->twitter;
        $adoptor->instagram = $request->instagram;
        $adoptor->website = $request->website;
        $adoptor->email = $request->email;
        $adoptor->status = $status;
        $adoptor->scale = $request->scale;
        $adoptor->save();
        $adoptor->equipments()->attach($request->equipments);
        $adoptor->technologies()->attach($request->technology);
        // $adoptor->rawmaterials()->attach($request->rawMats);
        Toastr::success('New Adoptor Successfully save ','Success');
            return redirect()->route('admin.adoptor.index');
        
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Adoptor  $adoptor
     * @return \Illuminate\Http\Response
     */
    public function show(Adoptor $adoptor)
    {
        $equipment = DB::table('adoptor_equipment')
            ->join('equipment','adoptor_equipment.equipment_id','=','equipment.id')
            ->where('adoptor_id',$adoptor->id)->get();
        $techs = DB::table('adoptor_product')
            ->join('products','adoptor_product.product_id','=','products.id')
            ->where('adoptor_id',$adoptor->id)->get();
        
        
        $month_array = array();
      $posts_dates = Sale::whereYear('created_at',date('Y'))
                    ->where('adoptor_id',$adoptor->id)
					->orderBy( 'created_at', 'ASC' )
					->pluck( 'created_at');
	$posts_dates = json_decode( $posts_dates );
	if ( ! empty( $posts_dates ) ) {
		foreach ( $posts_dates as $unformatted_date ) {
			$date = new \DateTime( $unformatted_date);
			$month_no = $date->format( 'm' );
			$month_name = $date->format( 'F-Y' );
			$month_array[ $month_no ] = $month_name;
		}
    }
    ///rice
	$rmi = Sale::where('product_id','14')->where('adoptor_id',$adoptor->id)
    ->select(
       DB::raw('sum(total) as sums'), 
       DB::raw("DATE_FORMAT(created_at,'%m') as monthKey")
       ) 
   ->whereYear('created_at', date('Y'))
   ->groupBy('monthKey')
   ->orderBy('created_at', 'ASC')
   ->get();
   $data = array();
   foreach($rmi as $order){
       $data[] = $order->sums;
   }



$rmir = Sale::where('product_id','15')->where('adoptor_id',$adoptor->id)
    ->select(
       DB::raw('sum(total) as sumsr'), 
       DB::raw("DATE_FORMAT(created_at,'%m') as monthKeyr")
       )
->whereYear('created_at', date('Y'))
->groupBy('monthKeyr')
->orderBy('created_at', 'ASC')
->get();
$datar = array();
foreach($rmir as $orderr){
    $datar[] = $orderr->sumsr;
}


$rmira = Sale::where('product_id','16')->where('adoptor_id',$adoptor->id)
    ->select(
       DB::raw('sum(total) as sumsra'), 
       DB::raw("DATE_FORMAT(created_at,'%m') as monthKeyra")
       )
->whereYear('created_at', date('Y'))
->groupBy('monthKeyra')
->orderBy('created_at', 'ASC')
->get();
$datara = array();
foreach($rmira as $orderra){
    $datara[] = $orderra->sumsra;
}

$rmiras = Sale::where('product_id','17')->where('adoptor_id',$adoptor->id)
    ->select(
       DB::raw('sum(total) as sumsras'), 
       DB::raw("DATE_FORMAT(created_at,'%m') as monthKeyras")
       )
    ->whereYear('created_at', date('Y'))
    ->groupBy('monthKeyras')
    ->orderBy('created_at', 'ASC')
    ->get();
$dataras = array();
foreach($rmiras as $orderras){
    $dataras[] = $orderras->sumsras;
}

$sales14 = DB::table('sales')->where('product_id','14')->where('adoptor_id',$adoptor->id)->select(
    DB::raw('DATE_FORMAT(created_at, "%M-%Y") as sale_month'),
    DB::raw('sum(total) as total'))
    ->orderBy('created_at', 'Desc')->groupBy('sale_month')->get();
$sales15 = DB::table('sales')->where('product_id','15')->where('adoptor_id',$adoptor->id)->select(
    DB::raw('DATE_FORMAT(created_at, "%M-%Y") as sale_month'),
    DB::raw('sum(total) as total'))
    ->orderBy('created_at', 'Desc')->groupBy('sale_month')->get();
$sales16 = DB::table('sales')->where('product_id','16')->where('adoptor_id',$adoptor->id)->select(
    DB::raw('DATE_FORMAT(created_at, "%M-%Y") as sale_month'),
    DB::raw('sum(total) as total'))
    ->orderBy('created_at', 'Desc')->groupBy('sale_month')->get();
$sales17 = DB::table('sales')->where('product_id','17')->where('adoptor_id',$adoptor->id)->select(
    DB::raw('DATE_FORMAT(created_at, "%M-%Y") as sale_month'),
    DB::raw('sum(total) as total'))
    ->orderBy('created_at', 'Desc')->groupBy('sale_month')->get();


    
        $areaspline_chart = Charts::multi('line', 'highcharts')
				    ->title('Sales Report')
				    ->colors(['#fa5300', '#000000','#fa0000','#00dff7'])
                    ->labels($month_array)
                    ->dataset('Rice-mongo instant',$data)
					->dataset('Ready-to-cook blend',$datar)
					->dataset('Rice-Mongo Curls',$datara)
					->dataset('Rice-Mongo Crunchies',$dataras);
                    
        $CF  = Charts::create('pie', 'highcharts')
                    ->title('Complementary Foods')
                    ->labels(['Rice-mongo instant', 'Ready-to-cook blend', 'Rice-Mongo Curls', 'Rice-Mongo Crunchies'])
                    ->values([75,80,90,100])
                    ->dimensions(1000,500)
                    ->responsive(true);
        $sales = Sale::where('adoptor_id',$adoptor->id)->get();
    $rawmaterials = RawMaterial::where('adoptor_id',$adoptor->id)->get();
    $rejects = Reject::where('adoptor_id',$adoptor->id)->get();
    $productSamples = ProductSample::where('adoptor_id',$adoptor->id)->get();
    
    $clients = Client::where('adoptor_id',$adoptor->id)->get();
    $suppliers = Supplier::where('adoptor_id',$adoptor->id)->get();
    $employees = Employee::where('adoptor_id',$adoptor->id)->get();
     $otherEquipment = OtherEquipment::where('adoptor_id','=',$adoptor->id)->get();

        return view('admin.adoptor.show',compact('clients','suppliers','employees','adoptor','sales','rawmaterials','areaspline_chart','CF','sales14','sales15','sales16','sales17','rejects','productSamples','equipment','techs','otherEquipment'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Adoptor  $adoptor
     * @return \Illuminate\Http\Response
     */
    public function edit(Adoptor $adoptor)
    {
        $technologies = Product::all();
        $rawMats = RawMaterial::all();
        $equipments = Equipment::all();
        $regions = Region::all();
        return view('admin.adoptor.edit',compact('adoptor','regions','equipments','rawMats','technologies'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Adoptor  $adoptor
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Adoptor $adoptor)
    {
        $this->validate($request,[
            'name' => 'required',
            'address' => 'required',
            'equipments' => 'required',
            // 'rawMats' => 'required',
            'technology' => 'required',
            'region' => 'required',
            'image' => 'image|mimes:jpeg,bmp,png,jpg',
            'mobile' => 'required|max:12',
            'about' => 'required|min:15',
            'email' => 'required|email',
            'scale' => 'required'
        ]);
        $image = $request->file('image');
        $slug = str_slug($request->name);
        $status = true;
        if(isset($image))
        {
            $currentDate = Carbon::now()->toDateString();
            $imageName = $slug.'-'.$currentDate.'-'.uniqid().'.'.$image->getClientOriginalExtension();
            if(!Storage::disk('public')->exists('adoptors'))
            {
                Storage::disk('public')->makeDirectory('adoptors');
            }
            $adop = Image::make($image)->resize(800,600)->save(90);
            Storage::disk('public')->put('adoptors/'.$imageName,$adop);
            if(!Storage::disk('public')->exists('adoptors/background'))
            {
                Storage::disk('public')->makeDirectory('adoptors/background');
            }
            // delete old image
            if(Storage::disk('public')->exists('adoptors/'.$adoptor->image))
            {
                Storage::disk('public')->delete('adoptors/'.$adoptor->image);
            }
            if(Storage::disk('public')->exists('adoptors/background/'.$adoptor->image))
            {
                Storage::disk('public')->delete('adoptors/background/'.$adoptor->image);
            }
            $adop = Image::make($image)->resize(1600,479)->save(90);
            Storage::disk('public')->put('adoptors/background/'.$imageName,$adop);
        }else {
            $imageName = $adoptor->image;
        }
        $adoptor->name = $request->name;
        $adoptor->slug = $slug;
        $adoptor->address = $request->address;
        $adoptor->map = $request->map;
        $adoptor->region_id = $request->region;
        $adoptor->image = $imageName;
        $adoptor->mobile = $request->mobile;
        $adoptor->telephone = $request->telephone;
        $adoptor->fax = $request->fax;
        $adoptor->about = $request->about;
        $adoptor->facebook = $request->facebook;
        $adoptor->twitter = $request->twitter;
        $adoptor->instagram = $request->instagram;
        $adoptor->website = $request->website;
        $adoptor->email = $request->email;
        $adoptor->status = $status;
        $adoptor->scale = $request->scale;
        $adoptor->save();
        $adoptor->equipments()->sync($request->equipments);
        // $adoptor->rawMaterials()->sync($request->rawMats);
        $adoptor->technologies()->sync($request->technology);
        Toastr::success('New Adoptor Successfully Updated ','Success');
            return redirect()->route('admin.adoptor.index');
        
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Adoptor  $adoptor
     * @return \Illuminate\Http\Response
     */
    public function destroy(Adoptor $adoptor)
    {
        if(Storage::disk('public')->exists('adoptors/'.$adoptor->image))
        {
            Storage::disk('public')->delete('adoptors/'.$adoptor->image);
        }
        if(Storage::disk('public')->exists('adoptors/background/'.$adoptor->image))
        {
            Storage::disk('public')->delete('adoptors/background/'.$adoptor->image);
        }
        $adoptor->equipments()->detach();
        $adoptor->rawMaterials()->detach();
        $adoptor->technologies()->detach();
        $adoptor->delete();
        Toastr::success('Adoptor Successfully Deleted ','Success');
            return redirect()->route('admin.adoptor.index');
    }
    public function report()
    {
        $data = Adoptor::all();
        $pdf = PDF::loadView('admin.adoptor.report',compact('data'));
return $pdf->stream('eTransmotion-report.pdf');
    }
    public function contactReport()
    {
        $data = User::all();
        $pdf = PDF::loadView('admin.adoptor.contactReport',compact('data'));
return $pdf->stream('eTransmotion-report.pdf');
    }
   public function adoptorSearch( Request $request){
    $this->validate($request, [
        'from' => 'required',
        'to' => 'required',
        'adoptor_id' => 'required'
     ]);
    $adoptor = Adoptor::find($request->adoptor_id);
    $month_array = array();
      $posts_dates = Sale::whereYear('created_at',date('Y'))
                    ->where('adoptor_id',$adoptor->id)
					->orderBy( 'created_at', 'ASC' )
					->pluck( 'created_at');
	$posts_dates = json_decode( $posts_dates );
	if ( ! empty( $posts_dates ) ) {
		foreach ( $posts_dates as $unformatted_date ) {
			$date = new \DateTime( $unformatted_date);
			$month_no = $date->format( 'm' );
			$month_name = $date->format( 'F-Y' );
			$month_array[ $month_no ] = $month_name;
		}
    }
    ///rice
	$rmi = Sale::where('product_id','14')->where('adoptor_id',$adoptor->id)
    ->select(
       DB::raw('sum(total) as sums'), 
       DB::raw("DATE_FORMAT(created_at,'%m') as monthKey")
       ) 
   ->whereYear('created_at', date('Y'))
   ->groupBy('monthKey')
   ->orderBy('created_at', 'ASC')
   ->get();
   $data = array();
   foreach($rmi as $order){
       $data[] = $order->sums;
   }



$rmir = Sale::where('product_id','15')->where('adoptor_id',$adoptor->id)
    ->select(
       DB::raw('sum(total) as sumsr'), 
       DB::raw("DATE_FORMAT(created_at,'%m') as monthKeyr")
       )
->whereYear('created_at', date('Y'))
->groupBy('monthKeyr')
->orderBy('created_at', 'ASC')
->get();
$datar = array();
foreach($rmir as $orderr){
    $datar[] = $orderr->sumsr;
}


$rmira = Sale::where('product_id','16')->where('adoptor_id',$adoptor->id)
    ->select(
       DB::raw('sum(total) as sumsra'), 
       DB::raw("DATE_FORMAT(created_at,'%m') as monthKeyra")
       )
->whereYear('created_at', date('Y'))
->groupBy('monthKeyra')
->orderBy('created_at', 'ASC')
->get();
$datara = array();
foreach($rmira as $orderra){
    $datara[] = $orderra->sumsra;
}



$rmiras = Sale::where('product_id','17')->where('adoptor_id',$adoptor->id)
    ->select(
       DB::raw('sum(total) as sumsras'), 
       DB::raw("DATE_FORMAT(created_at,'%m') as monthKeyras")
       )
->whereYear('created_at', date('Y'))
->groupBy('monthKeyras')
->orderBy('created_at', 'ASC')
->get();
$dataras = array();
foreach($rmiras as $orderras){
    $dataras[] = $orderras->sumsras;
}

$sales14 = DB::table('sales')->where('product_id','14')->where('adoptor_id',$adoptor->id)->select(
    DB::raw('DATE_FORMAT(created_at, "%M-%Y") as sale_month'),
    DB::raw('sum(total) as total'))
    ->orderBy('created_at', 'Desc')->groupBy('sale_month')->get();
$sales15 = DB::table('sales')->where('product_id','15')->where('adoptor_id',$adoptor->id)->select(
    DB::raw('DATE_FORMAT(created_at, "%M-%Y") as sale_month'),
    DB::raw('sum(total) as total'))
    ->orderBy('created_at', 'Desc')->groupBy('sale_month')->get();
$sales16 = DB::table('sales')->where('product_id','16')->where('adoptor_id',$adoptor->id)->select(
    DB::raw('DATE_FORMAT(created_at, "%M-%Y") as sale_month'),
    DB::raw('sum(total) as total'))
    ->orderBy('created_at', 'Desc')->groupBy('sale_month')->get();
$sales17 = DB::table('sales')->where('product_id','17')->where('adoptor_id',$adoptor->id)->select(
    DB::raw('DATE_FORMAT(created_at, "%M-%Y") as sale_month'),
    DB::raw('sum(total) as total'))
    ->orderBy('created_at', 'Desc')->groupBy('sale_month')->get();


    
        $areaspline_chart = Charts::multi('line', 'highcharts')
				    ->title('Sales Report')
				    ->colors(['#fa5300', '#000000','#fa0000','#00dff7'])
                    ->labels($month_array)
                    ->dataset('Rice-mongo instant',$data)
					->dataset('Ready-to-cook blend',$datar)
					->dataset('Rice-Mongo Curls',$datara)
					->dataset('Rice-Mongo Crunchies',$dataras);
                    
        $CF  = Charts::create('pie', 'highcharts')
                    ->title('Complementary Foods')
                    ->labels(['Rice-mongo instant', 'Ready-to-cook blend', 'Rice-Mongo Curls', 'Rice-Mongo Crunchies'])
                    ->values([75,80,90,100])
                    ->dimensions(1000,500)
                    ->responsive(true);
    $rawmaterials = RawMaterial::where('adoptor_id',$adoptor->id)->get();

      $sales = Sale::whereBetween('created_at',[$request->from,$request->to])->where('adoptor_id',$request->adoptor_id)->get();
      return view('admin.adoptor.show',compact('adoptor','sales','rawmaterials','areaspline_chart','CF','sales14','sales15','sales16','sales17'));
   }

   public function contact(){
         $users = User::all();
       return view('admin.adoptor.contactPerson',compact('users'));
   }
    
}
