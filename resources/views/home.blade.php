@extends('layouts.master')

@section('content')
<div id="page-wrapper">
    <div class="header">
        <h1 class="page-header">
            Dashboard <small>Summary of your App</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="#">Home</a></li>
            <li><a href="#">Library</a></li>
            <li class="active">Data</li>
        </ol>

    </div>
    <div id="page-inner">

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
    <td>Create User</td>
</tr>
@endforeach
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




                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif

             
@endsection
