@extends('layouts.app')

@section('content')

    <section class="wrapper">
        <div class="row">
            <div class="col-lg-12">
                <section class="card">
                    <header class="card-header">
                        Location Setup
                    </header>
                    <div class="col-lg-8">
                        <div class="card-body">
                            {!! Form::open(['route' => 'location.store'], ['method'=>'post']) !!}


                            <div class="form-group row">
                                <label for="inputEmail3" class="col-sm-3 col-form-label">Location Name</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control" name="store_name"
                                           aria-describedby="basic-addon3">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputEmail3" class="col-sm-3 col-form-label">Slug</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control" name="slug"
                                           aria-describedby="basic-addon3">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputEmail3" class="col-sm-3 col-form-label">Contact Person</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control" name="contactPerson"
                                           aria-describedby="basic-addon3">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputPassword3" class="col-sm-3 col-form-label">Contact Number</label>
                                <div class="col-sm-9">
                                    <input type="number" class="form-control" name="contactNumber"
                                           aria-describedby="basic-addon3">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputPassword3" class="col-sm-3 col-form-label">Address
                                    Detail</label>
                                <div class="col-sm-9">
                                             <textarea type="text" rows="4" cols="50" class="form-control"
                                                       name="address" id="inputPassword3">
                                        </textarea>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputPassword3" class="col-sm-3 col-form-label">Location admin</label>
                                <div class="col-sm-9">
                                    <select class="form-control form-control-sm mb-2" name="locationAdmin">
                                        <option> Select</option>
                                        @foreach($getAdmins as $admin)
                                            <option value="{{$admin->id}}"> {{$admin->name}} </option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputPassword3" class="col-sm-3 col-form-label">Location Operator</label>
                                <div class="col-sm-9">
                                    <select class="form-control form-control-sm mb-2" name="locationOperator">
                                        <option> Select</option>
                                        @foreach($getOperators as $operator)
                                            <option value="{{$operator->id}}"> {{$operator->name}} </option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>

                            <div class="form-group row">
                                <div class="col-sm-10">
                                    <button type="submit" class="btn btn-primary">Save</button>
                                </div>
                            </div>
                            {!! Form::close() !!}
                        </div>
                    </div>
                </section>
            </div>
        </div>
    </section>




@endsection


