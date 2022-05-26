<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use DB;
use App\Adoptor;
use App\Equipment;
use App\RawMaterial;
use App\Product;
use App\Sale;
use Carbon\Carbon;
use Charts;

class DashboardController extends Controller
{
    public function index()
    {
        $audits = DB::table('audits')
    ->join('users', 'audits.user_id','users.id')
    ->join('adoptors', 'users.adoptor_id','adoptors.id')
    ->select('adoptors.name as adoptor','audits.event','audits.old_values as old','audits.new_values as new','audits.created_at','auditable_type','audits.id as id')
    ->orderBy('audits.id','DESC')
    ->limit(4)
	->get();
	$notOpEquips = DB::table('adoptor_equipment')
		->join('equipment','adoptor_equipment.equipment_id','=','equipment.id')
		->join('adoptors','adoptor_equipment.adoptor_id','=','adoptors.id')
		->where('adoptor_equipment.status','=','0')
		->select('equipment.name as equipment','adoptors.name as adoptor','adoptor_equipment.problem as note','adoptor_equipment.updated_at as date')
		->get();
	$notOpTechs = DB::table('adoptor_product')
		->join('products','adoptor_product.product_id','=','products.id')
		->join('adoptors','adoptor_product.adoptor_id','=','adoptors.id')
		->where('adoptor_product.status','=','0')
		->select('adoptor_product.note as note','adoptors.name as adoptor','products.name as technology','adoptor_product.updated_at as date')
		->get();
	
    $adoptors = Adoptor::all();
    $equipment = Equipment::all();
    $rawMats  = RawMaterial::all();
    $techs = Product::all();
    $sales = Sale::where(DB::raw("(DATE_FORMAT(created_at,'%Y'))"),date('Y'))->get();
	
////note that this chart with the datatable are just a temporary function, i you can see this function is not totally dynamic but for now i just created a function that can fulfill the needs of the client and when there's a extra time i will make this code more accurate than this . Peace yow HAHAHA///////////////////////////
	$month_array = array();
	  $posts_dates = Sale::whereYear('created_at',date('Y'))
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
	$rmi = Sale::where('product_id','14')
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


 
$rmir = Sale::where('product_id','15')
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

 
 $rmira = Sale::where('product_id','16')
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


 
 $rmiras = Sale::where('product_id','17')
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
		
		
	$sales = DB::table('sales')
			->join('productions','sales.production_id','=','productions.id')
			->join('adoptor_products','productions.adoptor_product_id','=','adoptor_products.id')
			->rightjoin('products','adoptor_products.product_id','=','products.id')
			->select('products.id as id')
			->groupBy('products.id')->get();
			
	
	$areaspline_chart = Charts::multi('bar', 'highcharts')
                    ->title('Sales Chart for Complementary Food')
				    ->colors(['#ff0000', '#ff','#56f442','#41caf4'])
				    ->labels($month_array)
					->dataset('Rice-mongo instant',$data)
					->dataset('Ready-to-cook blend',$datar)
					->dataset('Rice-Mongo Curls',$datara)
					->dataset('Rice-Mongo Crunchies',$dataras);

 $sales = DB::table('sales')->where('product_id','14')->select(
	 	DB::raw('DATE_FORMAT(created_at, "%M-%Y") as sale_month'),
		 DB::raw('sum(total) as total'))
		 ->orderBy('created_at', 'Desc')->groupBy('sale_month')->get();
$sales15 = DB::table('sales')->where('product_id','15')->select(
	 	DB::raw('DATE_FORMAT(created_at, "%M-%Y") as sale_month'),
		 DB::raw('sum(total) as total'))
		 ->orderBy('created_at', 'Desc')->groupBy('sale_month')->get();
$sales16 = DB::table('sales')->where('product_id','16')->select(
	 	DB::raw('DATE_FORMAT(created_at, "%M-%Y") as sale_month'),
		 DB::raw('sum(total) as total'))
		 ->orderBy('created_at', 'Desc')->groupBy('sale_month')->get();
$sales17 = DB::table('sales')->where('product_id','17')->select(
	 	DB::raw('DATE_FORMAT(created_at, "%M-%Y") as sale_month'),
		 DB::raw('sum(total) as total'))
		 ->orderBy('created_at', 'Desc')->groupBy('sale_month')->get();
/////Hi, Sorry for the mess if you reading this comment that means i didn't make to have  extra time to re-code this functions, my apology//////

        return view('admin.dashboard', compact('notOpTechs','notOpEquips','audits','techs','rawMats','equipment','adoptors','areaspline_chart','sales','sales15','sales16','sales17'));
	}
	
}
