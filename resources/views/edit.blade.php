@extends('layouts.master')
{{-- {{ dd($customer['pivot']['activity_type']) }} --}}
@push('head-scripts')
<style>
textarea{ resize: none;}
.is-invalid{ border: 1px dashed red}

</style>
    
@endpush

@push('foot-scripts')
    
@endpush

@section('content')

    <div id="page-inner">
            <div class="row">
                    <div class="col-lg-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                Edit Customer
                            </div>
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-lg-12">
<form  method="POST" action="{{ route('user.update', $customer['id']) }}">
@csrf
@method('PATCH')
<div class="form-group">
<label for="name">Name *</label>
<input type="text" id="name" class="form-control @error('name') is-invalid @enderror" name="name" value="{{ ($customer?? "") ? $customer['name'] : old('name') }}" autocomplete="name" class="form-control" autofocus required>
@error('name')
<span class="text-danger help-text" role="alert">
    <strong>{{ $message }}</strong>
</span>
@enderror
</div>
 
<div class="form-group">
        <label for="email">Email *</label>
        <input type="email" id="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ ($customer?? "") ? $customer['email'] : old('email') }}" autocomplete="email" class="form-control" required>
@error('email')
<span class="text-danger help-text" role="alert">
    <strong>{{ $message }}</strong>
</span>
@enderror
</div>

<div class="form-group">
        <label for="phone">Phone *</label>
        <input type="text" id="phone" class="form-control @error('phone') is-invalid @enderror" name="phone" value="{{ ($customer?? "") ? $customer['phone'] : old('phone') }}" autocomplete="phone" class="form-control" required>
        @error('phone')
        <span class="text-danger help-text" role="alert">
            <strong>{{ $message }}</strong>
        </span>
        @enderror
</div>

<div class="form-group">
        <label for="address">Address *</label>
        <textarea id="address" class="form-control @error('address') is-invalid @enderror" rows="3" name="address">{{ ($customer?? "") ? $customer['address'] : old('address') }}</textarea>
        @error('address')
        <span class="text-danger help-text" role="alert">
            <strong>{{ $message }}</strong>
        </span>
        @enderror
</div>


<div class="form-group">
        <label>Status</label>
        <label class="radio-inline @error('status') is-invalid @enderror">
        <input  type="radio" name="status" {{ ($customer['status'] ?? "")  ? 'checked': ''  }} value="1">Paid
        </label >
        <label class="radio-inline @error('status') is-invalid @enderror">
        <input type="radio" {{ ($customer['status'] ?? "")  ? '': 'checked'  }} name="status" value="0" >Not Paid
        </label>

        @error('status')
        <span class="text-danger help-text" role="alert">
            <strong>{{ $message }}</strong>
        </span>
        @enderror
       
</div>





<div class="form-group input-group">
<button  class="btn btn-primary" type="submit">Update</button>    
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
               




                    {{-- @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif --}}

             
@endsection
