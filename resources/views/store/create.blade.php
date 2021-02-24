@extends('layouts.app')

@section('content')
    <section class="wrapper">
        <div class="row">
            <div class="col-lg-12">
                <section class="card">
                    <header class="card-header">
                        Create Store
                    </header>
                    <div class="col-lg-8">
                        @include('layouts.partial.validationMessage')
                        <div class="card-body">
                            {!! Form::open(['route' => 'store.store'], ['method'=>'post']) !!}

                            <div class="form-group row">
                                <label for="inputEmail3" class="col-sm-3 col-form-label">Stores Name</label>
                                <div class="col-sm-9">
                                    <input type="text" name="storeName" class="form-control" id="inputEmail3">
                                </div>
                            </div>
                            @can('isSuperAdmin')
                                <div class="form-group row">
                                    <label for="inputEmail3" class="col-sm-3 col-form-label">Stores Location</label>
                                    <div class="col-sm-9">
                                        <select class="form-control form-control-sm mb-2" name="locationAdmin">
                                            <option> Select</option>
                                            @foreach($allLocations as $location)
                                                <option value="{{$location->id}}"> {{$location->name}} </option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="inputPassword3" class="col-sm-3 col-form-label">Store Number</label>
                                    <div class="col-sm-9">
                                        <div class="input-group mb-3">
                                            <input type="text" class="form-control" name="storeNumber"
                                                   aria-describedby="basic-addon3">
                                        </div>
                                    </div>
                                </div>
                            @endcan
                        @can('isAdmin')
                            <div class="form-group row">
                                <label for="inputPassword3" class="col-sm-3 col-form-label">Store Number</label>
                                <div class="col-sm-9">
                                    <div class="input-group mb-3">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"
                                                  id="basic-addon3">{{$allLocations->prefix}}</span>
                                        </div>
                                        <input type="text" name="storeNumber" class="form-control"
                                               aria-describedby="basic-addon3">
                                    </div>
                                </div>
                            </div>
                            @endcan
                            <div class="form-group row">
                                <label for="inputPassword3" class="col-sm-3 col-form-label">Contact Name</label>
                                <div class="col-sm-9">
                                    <input type="name" name="contactName" class="form-control">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputPassword3" class="col-sm-3 col-form-label">Contact Number</label>
                                <div class="col-sm-9">
                                    <div class="input-group mb-3">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text" id="basic-addon3">+88</span>
                                        </div>
                                        <input type="number" name="contactNumber" class="form-control" id="basic-url"
                                               aria-describedby="basic-addon3">
                                    </div>
                                </div>
                            </div>


                            <fieldset class="form-group">
                                <div class="row">
                                    <legend class="col-form-label col-sm-3 pt-0">Payment Method</legend>
                                    <div class="col-sm-9">
                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" name="paymenMethod"
                                                   id="gridRadios1" value="1" checked>
                                            <label class="form-check-label" for="gridRadios1">
                                                Bank
                                            </label>
                                        </div>
                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" name="paymenMethod"
                                                   id="gridRadios2" value="2">
                                            <label class="form-check-label" for="gridRadios2">
                                                MFS
                                            </label>
                                        </div>
                                    </div>
                                </div>
                            </fieldset>
                            <div class="form-group row">
                                <label for="inputPassword3" class="col-sm-3 col-form-label">Bank/MFS Name</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control" name="bank_mfs_name" id="inputPassword3">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputPassword3" class="col-sm-3 col-form-label">Account Number</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control" name="acNumber" id="inputPassword3">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputPassword3" class="col-sm-3 col-form-label">Payment Details
                                   </label>
                                <div class="col-sm-9">
                                        <textarea type="text" rows="4" cols="50" class="form-control"
                                                  id="inputPassword3" name="paymentDetails"
                                                  placeholder="A/C">
                                        </textarea>
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
