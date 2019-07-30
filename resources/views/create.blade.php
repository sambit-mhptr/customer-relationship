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

                      {{--   <div class="col-lg-5">
                            @if(count($errors->all()))
                            @foreach ($errors->all() as $e)
                            <p class="alert alert-danger">{{ $e }}</p>
                                
                            @endforeach
                            @endif

                        </div> --}}

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
        <input  type="radio" name="status" @if(old('status')) checked @endif  value="1">Paid
        </label >
        <label class="radio-inline @error('status') is-invalid @enderror">
        <input type="radio" name="status" @if(!old('status')) checked @endif value="0" checked>Not Paid
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

        @if( count($errors->get('activity_type.*')) || count($errors->get('activity_description.*')) )

        @php
         $count =  max([count(session()->getOldInput()['activity_type']) , count(session()->getOldInput()['activity_description'])]);
        @endphp
 @for ($i = 0; $i < $count; $i++)
           
 <div > 
         <div class="form-group">
             <label for="activity_type"> Activity Type</label>
             <input type="text" id="activity_type"
                 class="form-control @error('activity_type.'.$i) is-invalid @enderror" name="activity_type[]"
                 value="{{ old('activity_type.'.$i) ?? "" }}" autocomplete="activity_type[]" class="form-control"
                >
             <span class="help-text @error('activity_type.'.$i) text-danger @enderror" role="alert">
                 <strong>{{$errors->get('activity_type.*')['activity_type.'.$i][0] ?? ""}}</strong>
             </span>
         </div>
         
         <div class="form-group">
                 <label for="activity_description">Describe Activity</label>
                 <textarea id="activity_description" name="activity_description[]" class="form-control @error('activity_description.'.$i) is-invalid @enderror" rows="3">{{ old('activity_description.'.$i) ?? "" }}</textarea>
                 @error('activity_description.*')
                 <span class="help-text @error('activity_description.'.$i) text-danger @enderror" role="alert">
                     <strong>{{$errors->get('activity_description.*')['activity_description.'.$i][0] ?? ""}}</strong>
                 </span>
                 @enderror
 
         </div> 
         <span class="help-text" role="alert">Give both activity decription and type. </span>
     </div> 
  
 
 
@endfor
 
 
 
 

@endif




</div>

</div>

                            </div>
<div class="form-group input-group" style="margin-top:2em">
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
               

             
@endsection






@push('foot-scripts')
<script>
function addActivity(event)
{ event.preventDefault();

    var tag = `<div>
<div class="form-group">
        <label for="activity_type"> Activity Type</label>
        <input type="text" id="activity_type" class="form-control " name="activity_type[]" value="" autocomplete="" class="form-control">
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
<span class="help-text" role="alert">Give both activity decription and type. </span>
</div>`;

    jQuery("#each-activity").append(tag);
    
} 

function removeActivity(event)
{ event.preventDefault();
   jQuery("#each-activity > div:last-child").remove();
   
}  

</script> 
@endpush