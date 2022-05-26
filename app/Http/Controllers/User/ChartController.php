<?php

namespace App\Http\Controllers\User;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Sale;
use DateTime;
use Auth;

class ChartController extends Controller
{
    protected function getAllMonths(){
		$id = Auth::user()->adoptor_id;
		$month_array = array();
		
		$posts_dates = Sale::where('adoptor_id',$id)->whereYear('created_at',date('Y'))
						->orderBy( 'created_at', 'ASC' )
						->pluck( 'created_at');
		$posts_dates = json_decode( $posts_dates );
		if (! empty( $posts_dates ) ) {
			foreach ( $posts_dates as $unformatted_date ) {
				$date = new \DateTime( $unformatted_date);
				$month_no = $date->format( 'm' );
				$month_name = $date->format( 'M-Y' );
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
	protected function getMonthlyPostData() {
		$monthly_post_count_array = array();
		$month_array = $this->getAllMonths();
		$month_name_array = array();
		if ( ! empty( $month_array ) ) {
			foreach ( $month_array as $month_no => $month_name ){
				$monthly_post_count = $this->getMonthlyPostCount( $month_no );
				array_push( $monthly_post_count_array, $monthly_post_count );
				array_push( $month_name_array, $month_name );
			}
		}
		$max_no = max( $monthly_post_count_array );
		$max = round($max_no * 1.5);
		$monthly_post_data_array = array(
			'months' => $month_name_array,
			'post_count_data' => $monthly_post_count_array,
			'max' => $max,
		);
        return $monthly_post_data_array;
    }
}
