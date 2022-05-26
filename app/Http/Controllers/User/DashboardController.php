<?php

namespace App\Http\Controllers\User;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Auth;
use DB;
use App\AdoptorProduct;
use App\Sale;
use DateTime;
use Carbon\Carbon;
use App\RawMaterial;

class DashboardController extends Controller
{
     public function index()
    {   
        $id = Auth::user()->adoptor_id;
        $rawMats = RawMaterial::where('adoptor_id',Auth::user()->adoptor->id)->get();
        $techs = DB::table('adoptor_product')->where('adoptor_product.adoptor_id',$id)
        ->join('products', 'products.id', '=', 'adoptor_product.product_id')
        ->get();
        $equipment = DB::table('adoptor_equipment')->where('adoptor_equipment.adoptor_id',$id)
        ->join('equipment', 'equipment.id', '=', 'adoptor_equipment.equipment_id')
        ->get();
        $prod = AdoptorProduct::where('adoptor_id',$id);

         return view('user.dashboard',compact('rawMats','techs','equipment','prod'));
    }
    
    public function home(){
        
        return view('user.home');
    }

    protected function getAllMonths(){
		$id = Auth::user()->adoptor_id;
		$month_array = array();
		
		$posts_dates = Sale::where('adoptor_id',$id)->whereYear('created_at',date('Y'))
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
		return $month_array;
	}
	protected function getMonthlyPostCount( $month ) {
		$year = date('Y');
		$id = Auth::user()->adoptor_id;
		$monthly_post_count = Sale::where('adoptor_id',$id)
							->whereYear('created_at',$year)
							->whereMonth('created_at', $month )
							->sum('total');
		return $monthly_post_count;
	}
	protected function salesData() {
		$monthly_post_count_array = array();
		$month_array = $this->getAllMonths();
		$month_name_array = array();
		if ( ! empty( $month_array ) ) {
			foreach ( $month_array as $month_no => $month_name ){
				$monthly_post_count = $this->getMonthlyPostCount( $month_no );
				array_push( $monthly_post_count_array, $monthly_post_count );
                array_push( $month_name_array, $month_name );

                echo '<tr>
                        <td>'.$month_no.'</td>
                        <td>'.$month_name.'</td>
                        <td><strong>'.number_format($monthly_post_count).'&nbsp;PHP</strong></td>
                    </tr>';
                // $monthly_post_data_array[$month_name] = $monthly_post_count;
			}
		}
		$max_no = max( $monthly_post_count_array );
        $max = round($max_no * 1);
       
		// $monthly_post_data_array = array(
		// 	'months' => $month_name_array,
		// 	'post_count_data' => $monthly_post_count_array,
		// 	'max' => $max,
		// );
        // return $monthly_post_data_array;
    }
}
