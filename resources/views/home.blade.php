@extends('layouts.master')
{{-- {{ dd($customers) }} --}}
@push('head-scripts')
<style>
.mb-3{ margin-bottom: 5%;}
</style>
    
@endpush

@push('foot-scripts')

@if (count($customers))
<script>
        $(document).ready(function () {
            $('#dataTables-example').dataTable();
        });
</script>
@endif

@endpush

@section('content')



    <div id="page-inner">
            <div class="mb-3">
            <a class="btn btn-info pull-right" href="{{ route('user.create') }}" >Create Customer</a></div>
        <div class="row">
            <div class="col-md-12">
                    @if (session('status'))
                    <div class="alert alert-success text-center" role="alert">
                        {{ session('status') }}
                    </div>
                    @endif
               
                <!-- Advanced Tables -->
                <div class="panel panel-default">
                    <div class="panel-heading">
                         Advanced Tables
                    </div>
                    <div class="panel-body">
                           
                        <div class="table-responsive">
                            <table class="table table-striped table-bordered table-hover" id="dataTables-example">
<thead>
<tr>
<th>#</th>
<th>Customer Name</th>
<th>Customer Details</th>
<th>Activity</th>
<th>Action</th>
</tr>
</thead>

@if (count($customers))
    
@php $i=1; @endphp
@foreach ($customers as $customer)
<tr class="odd gradeX">
    <td class="center">{{$i++}}</td>
    <td>{{$customer['name']}}</td>
    <td>
    <div>
        Email : {{ $customer['email'] }}<br>
        Phone : {{ $customer['phone'] }}<br>
        Address : {{ $customer['address'] }}<br>
        Status:  {{ $customer['status']==true?'Paid':'Not Paid' }}<br>
    </div>
    </td>
    <td> <a href="{{ route('user.show', $customer['id']) }}" style="font-size:1.4em" class="fa fa-eye"> View Activity</a>  </td>
    <td class="text-center">
    <form style="display:inline" onclick="if(confirm('would you like to delete')){return this.submit();}else{return false;}" method="POST" action="{{ route('user.delete', $customer['id'] ) }}">
@csrf
@method('DELETE')

<span style="font-size:1.4em;cursor:pointer" class="fa fa-trash-o"></span>
</form>
  
<a href="{{ route('user.edit', $customer['id']) }}" style="font-size:1.4em" class="fa fa-edit"></a>


</td>
</tr>
@endforeach   
@else
 <tr> <td class="text-center text-danger" colspan="5">No Customers Found</td></tr>   
@endif

                            </table>
                        </div>
                        
                    </div>
                </div>
                <!--End Advanced Tables -->
            </div>
        </div>



        <div class="row">
            <div class="col-md-12">

            </div>
        </div>
        <!-- /. ROW  -->





       
        <!-- /. ROW  -->


      


{{-- 
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif --}}

             
@endsection
