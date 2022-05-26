<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;

class LiveSearch extends Controller
{


    function action(Request $request)
    {
     if($request->ajax())
     {
      $output = '';
      $query = $request->get('query');
      if($query != '')
      {
       $data = DB::table('adoptors')
         ->where('name', 'like', '%'.$query.'%')
         ->orderBy('id', 'desc')
         ->limit(3)
         ->get();
         
      }
      else
      {
       $data = DB::table('adoptors')
         ->inRandomOrder()
         ->limit(3)
         ->get();
      }
      $total_row = $data->count();
      if($total_row > 0)
      {
       foreach($data as $row)
       {
        $output .= '
        <div class="col-md-4 col-sm-4 col-xs-12 wow fadeIn" data-wow-duration="1s" data-wow-delay=".2s">
        <div class="single-blog">
          <div class="single-blog-img">
            <a href="adoptor/'.$row->id.'">
              <img class="img-circle" src="storage/adoptors/'.$row->image.'" alt="image">
            </a>
          </div>
          <div class="blog-meta">
            <h6>
              <i class="fa fa-map-marker"></i>
              '.$row->address.'
            </h6>
          </div>
          <div class="blog-text">
            <h4>
              <a href="adoptor/'.$row->id.'">'.$row->name.'</a>
            </h4>
            <p>
              '.substr(strip_tags($row->about),0,100).'
            </p>
          </div>
          <span>
          <a href="adoptor/'.$row->id.'" class="ready-btn">Read more</a>
          </span>
        </div>
        <!-- Start single blog -->
      </div>
        ';
       }
      }
      else
      {
       $output = '<center>
       <div class="col-md-4-offset-4 wow fadeIn" data-wow-duration="1s" data-wow-delay=".2s"">
            <i class="fa fa-warning fa-5x" style="color:red"></i><br>
            <p class="btn btn-danger btn-lg">No data found&nbsp;<i class="fa fa-exclamation"></i></p>
         </div>
         </center>
       ';
      }
      $data = array(
       'table_data'  => $output,
       'total_data'  => $total_row
      );

      echo json_encode($data);
     }
    }
}

