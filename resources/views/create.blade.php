@extends('layouts.master')

@push('head-scripts')
<style>
textarea{ resize: none;}
.is-invalid{ border: 1px dashed red}



</style>
    
@endpush



@section('content')

    <div id="page-inner">
            <div class="row">
                    <div class="col-lg-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                Create Customer
                            </div>
                            <div class="panel-body">
                                <div class="row">

                        <div class="col-lg-5">
                            @if(count($errors->all()))
                            @foreach ($errors->all() as $e)
                            <p class="alert alert-danger">{{ $e }}</p>
                                
                            @endforeach
                            @endif

                        </div>

                                </div>
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
<hr>
<h4 class="text-center">Associate Activity</h4>
<a class="pull-right" onclick="addActivity(event)" href="">Add Activity</a><br/><a onclick="removeActivity(event)" href="" class="pull-right">Remove Activity</a>
<div id="each-activity">



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
               

             
@endsection






@push('foot-scripts')
<script>
 var invalidTyp;
 var text;
 var oldTyp;
 var oldDesc;
 var messageTyp;

 var invalidDesc;
 var textDesc;
 var oldDesc;
 var messageDesc ;

@error('activity_type')
  invalidTyp = 'is-invalid';
  text = 'text-danger';
  oldTyp = "{{ old('activity_type') }}";
  oldDesc = "{{ old('activity_description') }}";
  messageTyp = "{{ $message }}"
@enderror

@error('activity_description')
  invalidDesc = 'is-invalid';
  textDesc = 'text-danger';
  oldDesc = "{{ old('activity_description') }}";
  messageDesc = "{{ $message }}"
@enderror


var counter = 0;
function addActivity(event)
{ event.preventDefault();
  counter++;

    var tag = `<div id="add-${counter}">
<div class="form-group">
        <label for="activity_type"> Activity Type</label>
        <input type="text" id="activity_type" class="form-control " name="activity_type[]" value="" autocomplete="" class="form-control" required>
        <span class="help-text" role="alert">
            <strong></strong>
        </span>
</div>

<div class="form-group">
        <label for="activity_description">Describe Activity</label>
        <textarea id="activity_description" name="activity_description[]" class="form-control" rows="3"></textarea>
        <span class="help-text" role="alert">
            <strong></strong>
        </span>
</div>
</div>`;

    jQuery("#each-activity").append(tag);
    
} 

function removeActivity(event)
{ event.preventDefault();
   jQuery("#add-"+counter).remove();
    counter--;
}  
</script> 
@endpush