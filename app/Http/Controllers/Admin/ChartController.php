<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use DB;
use App\Sale;
use Charts;

class ChartController extends Controller
{
    public function index()
    {
        $sales = Sale::where(DB::raw("(DATE_FORMAT(created_at,'%Y'))"),date('Y'))->get();
        $chart = Charts::database($sales,'bar','highcharts')
                ->title("Sales Details")
                ->elementLabel("Total Sales")
                ->dimensions(1000,500)
                ->responsive(true)
                ->groupByMonth(date('Y'), true);
        $pie_chart = Charts::create('pie', 'highcharts')
				->title('Pie Chart Demo')
				->labels(['Product 1', 'Product 2', 'Product 3'])
				->values([15,25,50])
				->dimensions(1000,500)
				->responsive(true);

                 return view('admin.dashboard',compact('chart','pie_chart'));
    }
}
