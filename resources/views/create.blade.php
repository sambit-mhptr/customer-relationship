@extends('layouts.master')

@push('head-scripts')
<style>
textarea{ resize: none;}
.is-invalid{ border: 1px dashed red}
</style>
    
@endpush

@push('foot-scripts')
    
@endpush

@section('content')
<div id="page-wrapper">
    <div class="header">
            <h1 class="page-header">
                    Dashboard <small> {{auth()->user()->name}} </small>
                </h1>

    </div>
    <div id="page-inner">
            <div class="row">
                    <div class="col-lg-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                Create Customer
                            </div>
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-lg-12">
<form id="unique" method="POST" action="{{ route('user.store') }}">
                                                    @csrf
<div class="form-group">
<label for="name">Name *</label>
<input type="text" id="name" class="form-control @error('name') is-invalid @enderror" name="name" value="{{ old('name') }}" autocomplete="name" class="form-control" autofocus required>
@error('name')
<span class="text-danger help-text" role="alert">
    <strong>{{ $message }}</strong>
</span>
@enderror
</div>
 
<div class="form-group">
        <label for="email">Email *</label>
        <input type="email" id="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" autocomplete="email" class="form-control" required>
@error('email')
<span class="text-danger help-text" role="alert">
    <strong>{{ $message }}</strong>
</span>
@enderror
</div>

<div class="form-group">
        <label for="phone">Phone *</label>
        <input type="text" id="phone" class="form-control @error('phone') is-invalid @enderror" name="phone" value="{{ old('phone') }}" autocomplete="phone" class="form-control" required>
        @error('phone')
        <span class="text-danger help-text" role="alert">
            <strong>{{ $message }}</strong>
        </span>
        @enderror
</div>

<div class="form-group">
        <label for="address">Address *</label>
        <textarea id="address" class="form-control @error('address') is-invalid @enderror" rows="3" name="address">{{ old('address') }}</textarea>
        @error('address')
        <span class="text-danger help-text" role="alert">
            <strong>{{ $message }}</strong>
        </span>
        @enderror
</div>


<div class="form-group">
        <label>Status</label>
        <label class="radio-inline @error('status') is-invalid @enderror">
        <input  type="radio" name="status"  value="1">Paid
        </label >
        <label class="radio-inline @error('status') is-invalid @enderror">
        <input type="radio" name="status" value="0" checked>Not Paid
        </label>

        @error('status')
        <span class="text-danger help-text" role="alert">
            <strong>{{ $message }}</strong>
        </span>
        @enderror
       
</div>

<div class="form-group">
        <label>Select Activity Type</label>
        <select class="form-control @error('activity_type') is-invalid @enderror" name="activity_type">
            <option value="">Select</option>
            <option value="mail" {{ (old("activity_type") == 'mail' ? "selected":"") }}>Mail</option>
            <option value="call" {{ (old("activity_type") == 'call' ? "selected":"") }}>Call</option>
        </select>
        @error('activity_type')
        <span class="text-danger help-text" role="alert">
            <strong>{{ $message }}</strong>
        </span>
        @enderror
</div>

<div class="form-group">
        <label for="activity_description">Describe Activity</label>
        <textarea id="activity_description" name="activity_description" class="form-control @error('activity_description') is-invalid @enderror" rows="3">{{ old('activity_description') }}</textarea>
        @error('activity_description')
        <span class="text-danger help-text" role="alert">
            <strong>{{ $message }}</strong>
        </span>
        @enderror
    </div>

<div class="form-group input-group">
<button onclick="this.form.submit()" class="btn btn-primary" type="submit">Submit</button>    
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


        <footer>
            <p>All right reserved. Template by: <a href="http://webthemez.com">WebThemez</a></p>


        </footer>
    </div>
    <!-- /. PAGE INNER  -->
</div>




                    {{-- @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif --}}

             
@endsection
