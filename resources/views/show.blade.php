@extends('layouts.master')
{{-- {{ dd($activities[0]->name)}} --}}
@push('head-scripts')
<style>
    /* textarea {
        resize: none;
    } */

    .is-invalid {
        border: 1px dashed red
    }

    .delete-btn {
        position: relative;
        left: 80%;
    }

</style>

@endpush

@push('foot-scripts')

@endpush

@section('content')

<div id="page-inner">




    <div class="row">
        <div class="col-lg-8 col-lg-offset-2">
            <div class="panel panel-default">

                <div class="panel-heading">
                    Activities
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="row">
                            <div class="col-md-10 col-md-offset-1">
                                @if (count($activities))
                               
                                <div class="bg-primary text-info text-center"> Customer Name: {{ $activities[0]->name }}
                                    <br>
                                    Customer Email: {{ $activities[0]->email }} <br>
                                    Customer Phone : {{ $activities[0]->phone }}
                                    Customer Status: {{ $activities[0]->status?' paid': ' not paid' }}

                                </div>

                                @foreach ($activities as $a)
                                @if (trim($a->activity_type) != '' && trim($a->description) != '')
                                    
                               
                                <div style="margin-top:3em" class="thumbnail">
                                    <div class="caption" style="padding-top:2em">

                                        <form class="form-horizontal" method="POST"
                                            action="{{ route('activity.update',  $a->id) }}">
                                            @csrf
                                            @method('PATCH')
                                            <div class="form-group">
                                                <label for="activity_type" class="col-sm-2 control-label">Activity
                                                    Type</label>
                                                <div class="col-sm-10">
                                                    <input type="text" class="form-control" id="activity_type"
                                                        name="activity_type" placeholder="Activity Type"
                                                        value="{{ $a->activity_type }}">
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <label for="description"
                                                    class="col-sm-2 control-label">Description</label>
                                                <div class="col-sm-10">
                                                    <textarea name="description" class="form-control" id="description"
                                                        placeholder="Activity Description">{{ $a->description }}</textarea>
                                                </div>
                                            </div>


                                            <button style="display:inline-block" type="submit" class="btn btn-primary"
                                                role="button">Update</button>



                                        </form>
                                        <form method="POST"
                                            onclick="if(confirm('would you like to delete')){return this.submit();}else{return false;}"
                                            action="{{route('activity.delete', $a->id)}}" style="cursor:pointer">
                                            @csrf
                                            @method('DELETE')

                                            <span class="btn btn-danger delete-btn" role="button">X</span>
                                        </form>


                                        {{-- <label>Activity Type : </label><input name="activity_type" class="form-control" type="text" value="{{ $a->activity_type }}">

                                        <label>Activity Description :<label>
                                                <textarea name="description" class="form-control"
                                                    rows="2">{{ $a->description }}</textarea> --}}


                                    </div>
                                </div>

                                @endif
                                
                                @endforeach

                                @else
                                <p class="text-danger text-center text-capitalize"> No Activities yet!!!!</p>
                                @endif


                            </div>







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
