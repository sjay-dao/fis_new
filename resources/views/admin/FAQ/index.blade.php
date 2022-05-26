@extends('layouts.backend.admin.app')
@section('title','FAQ - ')
@push('css')

@endpush
@section('area')
<div class="col-sm-6">
        <div class="breadcrumbs-area clearfix">
            <h4 class="page-title pull-left">FAQ</h4>
            <ul class="breadcrumbs pull-left">
                <li><a href="{{route('admin.FAQ.index')}}">FAQ</a></li>
                <li><span>index</span></li>
            </ul>
        </div>
    </div>
@endsection
@section('content')
    <div class="main-content-inner"><br>
        <div class="row">
            <!-- seo fact area start -->
            <div class="col-lg-12 col-md-12 col-sm-12">
                    <a href="{{route('admin.FAQ.create')}}" class="btn btn-rounded mb-3 text-white button-default"><i class="fa fa-plus-circle">&nbsp;</i>Add FAQ</a>
                    <div class="single-table">
                    <div class="data-tables datatable-dark">
                        <table class="table table-hover progress-table text-center">
                            <thead class="text-uppercase">
                            <tr>
                                <th scope="col"><i class="fa fa-list-ol color-default">&nbsp;</i>ID</th>
                                <th scope="col"><i class="fa fa-pencil color-default">&nbsp;</i>Question</th>
                                <th scope="col"><i class="fa fa-book color-default">&nbsp;</i>Answer</th>
                                <th scope="col"><i class="fa fa-tasks color-default">&nbsp;</i>action</th>
                            </tr>
                            </thead>
                            <tbody>
                                @foreach ($faqs as $key=>$faq)
                                    <tr>
                                        <td class="">{{$key+1}}</td>
                                        <td class="">{{$faq->question}}</td>
                                        <td class="">{!!substr(strip_tags($faq->answer), 0, 50)!!}</td>
                                        <td>
                                            <ul class="d-flex justify-content-center">
                                                <li class="mr-3" data-toggle="tooltip" title="View information">
                                                    <a href="{{route('admin.FAQ.show',$faq->id)}}" class="btn btn-rounded btn-info  btn-xs"><i class="fa fa-eye"></i></a>
                                                </li>
                                                <li class="mr-3" data-toggle="tooltip" title="Update Information">
                                                    <a  href="{{route('admin.FAQ.edit',$faq->id)}}" class="btn btn-rounded btn-warning  btn-xs"><i class="fa fa-edit"></i></a></li>
                                                <li data-toggle="tooltip" title="Delete"><button type="submit" class="btn btn-rounded btn-danger  btn-xs" onclick="del({{$faq->id}})"><i class="ti-trash"></i></button></li>
                                                <form id="delete-{{$faq->id}}" action="{{route('admin.FAQ.destroy',$faq->id)}}" method="POST" style="display:none">
                                                    @csrf
                                                    @method('DELETE')
                                                </form>
                                            </ul>
                                        </td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <!-- testimonial area end -->
        </div>
    </div>
        </div>

        
       @endsection 
       @push('js')
       <script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
       <script>
            $(document).ready( function () {
                $('.table').DataTable();
            } );
            function del(id){
                const swalWithBootstrapButtons = Swal.mixin({
                confirmButtonClass: 'btn btn-success',
                cancelButtonClass: 'btn btn-danger',
                buttonsStyling: false,
                })

                swalWithBootstrapButtons.fire({
                title: 'Are you sure?',
                text: "You want to delete this Region ?",
                type: 'warning',
                showCancelButton: true,
                confirmButtonText: 'Yes, delete it!',
                cancelButtonText: 'No, cancel!',
                reverseButtons: true
                }).then((result) => {
                if (result.value) {
                    event.preventDefault();
                    document.getElementById('delete-'+id).submit();
                    
                } else if (
                    // Read more about handling dismissals
                    result.dismiss === Swal.DismissReason.cancel
                ) {
                    swalWithBootstrapButtons.fire(
                    'Cancelled',
                    'Your Data is safe :)',
                    'error'
                    )
                }
                })
            }
            </script>
       @endpush
  
