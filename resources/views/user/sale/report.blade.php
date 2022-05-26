<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="shortcut icon" type="image/png" href="img/dost.png">
    <title>Report</title>
    <style>
            .page-break {
                page-break-after: always;
            }
            h1{
  font-size: 30px;
  color: black;
  text-transform: uppercase;
  font-weight: 300;
  text-align: center;
  margin-bottom: 15px;
}
table{
  width:100%;
  table-layout: fixed;
}
.tbl-header{
  background-color: rgba(255,255,255,0.3);
 }
.tbl-content{
  height:300px;
  overflow-x:auto;
  margin-top: 0px;
  border: 1px solid rgba(255,255,255,0.3);
}
th{
  padding: 20px 15px;
  text-align: left;
  font-weight: 500;
  font-size: 12px;
  color: black;
  text-transform: uppercase;
}
td{
  padding: 15px;
  text-align: left;
  vertical-align:middle;
  font-weight: 300;
  font-size: 12px;
  color: black;
  border-bottom: solid 1px rgba(255,255,255,0.1);
}


/* demo styles */


body{
  background: -webkit-linear-gradient(left, #25c481, #25b7c4);
  background: linear-gradient(to right, #25c481, #25b7c4);
  font-family: 'Roboto', sans-serif;
}
section{
  margin: 50px;
}
td{
    max-width:20px;
    word-wrap:break-word;
}

/* follow me template */
.made-with-love {
  margin-top: 40px;
  padding: 10px;
  clear: left;
  text-align: center;
  font-size: 10px;
  font-family: arial;
  color: #fff;
}
.made-with-love i {
  font-style: normal;
  color: #F50057;
  font-size: 14px;
  position: relative;
  top: 2px;
}
.made-with-love a {
  color: #fff;
  text-decoration: none;
}
.made-with-love a:hover {
  text-decoration: underline;
}


/* for custom scrollbar for webkit browser*/

::-webkit-scrollbar {
    width: 6px;
} 
::-webkit-scrollbar-track {
    -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3); 
} 
::-webkit-scrollbar-thumb {
    -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3); 
} </style>      
</head>
<body>
<div class="panel panel-success">
    <div class="panel-heading">
     <center> <img src="storage/pdf/header.png" alt="image" style="width: 100%"></center>
    </div>
</div>
<h3><center>Productions&nbsp;&nbsp;Report<br>
  Total: {{number_format($total)}}</center></h3>
          <table cellpadding="0" cellspacing="0" border="0">
            
            <thead style="background-color:rgb(232, 71, 27);">
              <tr>
                <th style="border:1 px solid black; width: 5%;color:white"><center>#</center></th>
                <th style="border:1 px solid black; color:white; width: 20%;"><center>Name</center></th>
                <th style="border:1 px solid black; color:white; "><center>Description</center></th>
                <th style="border:1 px solid black; color:white; "><center>Price</center></th>
                <th style="border:1 px solid black; color:white; "><center>Packs</center></th>
                <th style="border:1 px solid black; color:white; "><center>Total</center></th>
              </tr>
            </thead>
          </table>
          <table cellpadding="0" cellspacing="0" border="0">
            <tbody>
              @foreach ($data as $key=>$item)
                <tr style="border:1 px solid black">
                    <td style="border:1 px solid black;width: 5%;"><b>{{$key+1}}</b></td>
                <td style="border:1 px solid black; width: 20%;">{{strtoupper($item->Production->AdoptorProduct->name)}}</td>
                    <td style="border:1 px solid black">
                      @if ($item->description == '')
                        N/A
                        @else
                        {{$item->description}}  
                    @endif</td>
                    <td style="border:1 px solid black">{{$item->price}}</td>
                    <td style="border:1 px solid black">{{$item->quantity}}</td>
                    <td style="border:1 px solid black">{{number_format($item->total)}}</td>
                    
                </tr>
              @endforeach
            </tbody>
            
          </table>
<footer style="position: fixed;
left: 0;
bottom: 0;
width: 100%;
background-color: rgb(232, 71, 27);
color: white;
text-align: center;">
  e-Transmotion - Electronic Techonology Transfer Monitoring and evaluation
</footer>
      
</body>
</html>
