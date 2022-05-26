<?php

namespace App\Http\Controllers\User;

use App\Sale;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Auth;
use App\AdoptorProduct;
use Brian2694\Toastr\Facades\Toastr;
use PDF;
use App\Production;
use App\Client;
use Illuminate\Support\Facades\DB;

class SaleController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    
    public function index()
    {
        $auth = Auth::user()->adoptor_id;
        $clients = Client::where('adoptor_id',$auth)->get();
        $sales = Sale::where('adoptor_id',$auth)->get();
        
        $total = $sales->sum('total');
        return view('user.sale.index',compact('sales','total','clients'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $auth = Auth::user()->adoptor_id;
        $clients = Client::where('adoptor_id',$auth)->get();
      
         $productions = Production::join('adoptor_products','adoptor_products.id','=','productions.adoptor_product_id')
                        ->where('adoptor_products.adoptor_id',$auth)
                        ->where('productions.packs','!=','0')
                        ->select('productions.id as id','adoptor_products.name as name','productions.packs','productions.dateProduced')
                        ->get();
        return view('user.sale.create',compact('productions','clients'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $auth = Auth::user()->adoptor->id;
        $this->validate($request, [
            'production' => 'required',
            'quantity' => 'required',
            'client' => 'required',
            'type' => 'required'
        ]);
        //get the product information
        $produciton = Production::find($request->production);
        $produciton->AdoptorProduct->Product->id;
        $rawmatused = $produciton->rawMaterialUsed->count();
        if($rawmatused <= 0){
            Toastr::error('Please Add raw Material used in the production first','Error');
            return redirect()->back();
        }
        //check if the request quantity less than or equal to the packs avialable in the production
        if($request->quantity > $produciton->packs){
            Toastr::error('Make sure that the request quantity is equal or less than the available quantity','Not Enough');
            return redirect()->back();
        }
       //check if the request if valid
        if($produciton->AdoptorProduct->adoptor->id != $auth)
        {
            Toastr::error('Something Wrong Please Contact the Admin','message');
            return redirect()->back();
        }
        //get the original price of the product from the table Adoptor_products
        if(!empty($request->price)){
            $OP = $request->price;
        }else {
            $OP =  $produciton->AdoptorProduct->originalPrice;
        }
        $total = $OP * $request->quantity;
        $oldPacks = $produciton->packs - $request->quantity;
        //update the production
        $produciton->packs = $oldPacks;
        
        //insert the sale data
        $sale = new Sale();
        $sale->adoptor_id = $auth;
        $sale->production_id = $request->production;
        $sale->product_id = $produciton->AdoptorProduct->Product->id;
        $sale->description = $request->description;
        $sale->quantity = $request->quantity;
        $sale->price = $OP;
        $sale->total = $total;
        $sale->status = $request->type;
        $sale->client_id = $request->client;
        $sale->save();
        $produciton->save();
        Toastr::success('Sale Successfully Added ','Success');
        return redirect()->route('user.sale.index');


    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Sale  $sale
     * @return \Illuminate\Http\Response
     */
    public function show(Sale $sale)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Sale  $sale
     * @return \Illuminate\Http\Response
     */
    public function edit(Sale $sale)
    {
        $id = Auth::user()->adoptor_id;
        $products  = AdoptorProduct::where('adoptor_id',$id)->get();
        return view('user.sale.edit',compact('products','sale'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Sale  $sale
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $auth = Auth::user()->adoptor->id;
        $sale = Sale::find($id);
        $this->validate($request, [
                'quantity' => 'required',
                'client' => 'required',
                'quantity' => 'required',
                'type' => 'required'
            ]);
         $production = Production::find($sale->production_id);
        $sum = $sale->quantity + $production->packs;

        $requestSub = $sum - $request->quantity;
        //get the orginal price 
        if($request->quantity > $sum){
            Toastr::error('Make sure that the request quantity is equal or less than the available quantity','Not Enough');
            return redirect()->back();
        }
        if(!empty($request->price)){
            $OP = $request->price;
        }else {
            $OP = $production->AdoptorProduct->originalPrice;
        }

        $totalPriceUpdate = $request->quantity * $OP;

       if($request->client == 0){
           $client = $sale->client_id;
       }else {
           $client = $request->client;
       }

        $sale->adoptor_id = $auth;
        $sale->production_id = $sale->production_id;
        $sale->product_id = $production->AdoptorProduct->Product->id;
        $sale->client_id = $client;
        $sale->description = $request->description;
        $sale->quantity = $request->quantity;
        $sale->price = $OP;
        $sale->total = $totalPriceUpdate;
        $sale->status = $request->type;
        $production->packs = $requestSub;
        $sale->save();
        $production->save();
        Toastr::success('Sale Successfully Updated ','Success');
        return redirect()->route('user.sale.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Sale  $sale
     * @return \Illuminate\Http\Response
     */
    public function destroy(Sale $sale)
    {
        $production = Production::find($sale->production_id);
        $sum = $sale->quantity + $production->packs;
        $production->packs = $sum;
        $production->save();
        $sale->delete();
        Toastr::success('Sale Successfully Deleted ','Success');
        return redirect()->route('user.sale.index');
    }

    public function report()
    {
        $auth = Auth::user()->adoptor->id;
        $data =Sale::where('adoptor_id',$auth)->get();
        $total = $data->sum('total');
        $pdf = PDF::loadView('user.sale.report',compact('data','total'));
        return $pdf->stream('eTransmotion-report.pdf');
    }
    public function search(Request $request)
    {
        $auth = Auth::user()->adoptor_id;
        $clients = Client::where('adoptor_id',$auth)->get();
        
        $this->validate($request, [
            'type' => 'required'
        ]);

        if(!empty($request->dateFrom and $request->dateTo)){
            if($request->type == '-'){
                $type = '';
            }else if ($request->type == '0' || '1'){
                $type = $request->type;
            }
            $sales = Sale::whereBetween('created_at',[$request->dateFrom, $request->dateTo])
                        ->where('status','LIKE','%'.$type.'%')
                        ->get();
        }

        // if($request->type == 'all'){
        //     $sales = Sale::where('adoptor_id',$auth)
        //         ->get();
        // }else {
        //     $sales = Sale::where('status',$request->type)
        //     ->where('adoptor_id',$auth)
        //     ->get();
        // }

       
         $total = $sales->sum('total');
         return view('user.sale.index',compact('sales','total','clients'));

         
    }
    public function sample(){
        $data['year_list'] = $this->fetch_year();
        return view('user.sale.sample')->with($data);
    }
    public function fetch_year(){
        $data = DB::table('chart_samples')->select(DB::raw('year'))->groupBy('year')->orderBy('year','DESC')->get();
        return $data;
    }

    public function fetch_data(Request $request) {
        if($request->input('year'))
        {

         $chart_data = $this->fetch_chart_data($request->input('year'));
   
         foreach($chart_data->toArray() as $row)
         {
       
          $output[] = array(
           'month'  => $row->month,
           'profit' => floatval($row->profit)
          );
         }
     
         echo json_encode($output);
        }
    }

    function fetch_chart_data($year)
    {
     $data =  DB::table('chart_samples')->orderBy('year', 'ASC')->where('year', $year)->get();
     return $data;
    }
}
