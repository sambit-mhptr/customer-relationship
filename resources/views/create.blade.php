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
                    <div class="col-lg-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                Basic Form Elements
                            </div>
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-lg-12">
    <form method="post" action="{{route('user.store')}}">
    @csrf
<div class="form-group">
<label>Customer Name</label>
<input type="text" id="name" class="form-control @error('name') is-invalid @enderror" name="name" value="{{ old('name') }}" required autocomplete="name" class="form-control">
<p class="help-block"></p>
</div>
                                        

                                            <div class="form-group input-group">
                                           <button class="btn btn-primary" type="submit">Submit</button>    
                                            </div>
                                        </form>
                                    </div>
                                    <!-- /.col-lg-6 (nested) -->
                                </div>
                                <!-- /.row (nested) -->
                            </div>
                            <!-- /.panel-body -->
                        </div>
                        <!-- /.panel -->
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <footer><p>All right reserved. Template by: <a href="http://webthemez.com">WebThemez</a></p></footer>
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
