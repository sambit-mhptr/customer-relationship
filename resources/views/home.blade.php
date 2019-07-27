@extends('layouts.master')

@push('head-scripts')
<style>
.mb-3{ margin-bottom: 5%;}
</style>
    
@endpush


@section('content')
<div id="page-wrapper">
    <div class="header">
        <h1 class="page-header">
            Dashboard <small> {{auth()->user()->name}} </small>
        </h1>

    </div>
    <div id="page-inner">
            <div class="mb-3">
    <a class="btn btn-info pull-right" href="/user" >Create Customer</a></div>
        <div class="row">
            <div class="col-md-12">
               
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
    

@foreach ($customers as $customer)
<tr class="odd gradeX">
    <td class="center">{{$customer['id']}}</td>
    <td>{{$customer['name']}}</td>
    <td>
    <div>
        Email : {{ $customer['email'] }}<br>
        Phone : {{ $customer['phone'] }}<br>
        Address : {{ $customer['address'] }}<br>
        Status:  {{ $customer['status']==true?'Paid':'Not Paid' }}<br>
    </div>
    </td>
    <td>
        Activity Type :    {{ $customer['pivot']['activity_type'] }}<br>
        Activity Description: {{ $customer['pivot']['description'] }}
    
    
    </td>
    <td class="text-center"><span style="font-size:2em" class="fa fa-eye"><span></td>
</tr>
@endforeach   
@else
 <tr> <td colspan="5">No Customers Found</td> </tr>   
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


        <footer>
            <p>All right reserved. Template by: <a href="http://webthemez.com">WebThemez</a></p>


        </footer>
    </div>
    <!-- /. PAGE INNER  -->
</div>



{{-- 
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif --}}

             
@endsection
