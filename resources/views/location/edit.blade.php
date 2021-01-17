@extends('layouts.app')
@push('css')
@endpush
@section('content')

    <section class="wrapper">
        <div class="row">
            <div class="col-lg-12">
                <section class="card">
                    <header class="card-header">
                        Location Setup
                    </header>
                    <div class="col-lg-8">
                        @include('layouts.partial.validationMessage')
                        <div class="card-body">
                            {!! Form::open(['route' => ['location.update', $locations->id]]) !!}
                            {{ method_field('PUT') }}

                            <div class="form-group row">
                                <label for="inputEmail3" class="col-sm-3 col-form-label">Location Name</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control" name="store_name"
                                          value="{{$locations->name}}" aria-describedby="basic-addon3">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputEmail3" class="col-sm-3 col-form-label">Slug</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control" name="slug"
                                           value="{{$locations->prefix}}" aria-describedby="basic-addon3">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputEmail3" class="col-sm-3 col-form-label">Contact Person</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control" name="contactPerson"
                                           value="{{$locations->contact_person}}" aria-describedby="basic-addon3">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputPassword3" class="col-sm-3 col-form-label">Contact Number</label>
                                <div class="col-sm-9">
                                    <input type="number" class="form-control" name="contactNumber"
                                           value="{{$locations->contact_number}}" aria-describedby="basic-addon3">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputPassword3" class="col-sm-3 col-form-label">Address
                                    Detail</label>
                                <div class="col-sm-9">
                                             <textarea type="text" rows="4" cols="50" class="form-control"
                                                       name="address">
                                                 {{$locations->address}}
                                        </textarea>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputPassword3" class="col-sm-3 col-form-label">Location admin</label>
                                <div class="col-sm-9">
                                    <select class="form-control form-control-sm mb-2" name="locationAdmin">
                                        <option> Select</option>
                                        @foreach($getAdmins as $admin)
                                            <option value="{{ $admin->id }}" {{ ( $admin->id == $locations->admin_id) ? 'selected' : '' }}>
                                                {{ $admin->name }}
                                            </option>
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
                                            <option value="{{ $operator->id }}" {{ ( $operator->id == $locations->operator_id) ? 'selected' : '' }}>
                                                {{ $operator->name }}
                                            </option>
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

@push('scripts')

@endpush
