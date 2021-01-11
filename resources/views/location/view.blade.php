@extends('layouts.app')

@section('content')
    <section class="wrapper">
        <div class="row">
            <div class="col-lg-12">
                <section class="card">
                    <header class="card-header">
                        Advanced Table
                    </header>

                    <div class="card-body">
                        <div class="adv-table">
                            <table class="display table table-bordered table-striped" id="dynamic-table">
                                <thead>
                                <tr>
                                    <th>Name</th>
                                    <th>Slug</th>
                                    <th>Contact Person</th>
                                    <th>Contact Number</th>
                                    <th>Address</th>
                                    <th>Location Admin</th>
                                    <th>Location Operator</th>
                                    <th>Action</th>
                                </tr>
                                </thead>
                                <tbody>
                                @foreach($locations as $location)
                                    <tr class="gradeX">
                                        <td>{{$location->name}}</td>
                                        <td>{{$location->slug}}</td>
                                        <td>{{$location->contact_person}}</td>
                                        <td>{{$location->contact_number}}</td>
                                        <td>{{$location->address}}</td>
                                        <td>{{$location->location_admin_id}}</td>
                                        <td>{{$location->operator_id}}</td>


                                        <td>
                                            <button class="btn btn-success btn-sm"><i class="fa fa-check"></i></button>
                                            <button class="btn btn-primary btn-sm"><i class="fa fa-pencil"></i></button>
                                            <button class="btn btn-danger btn-sm"><i class="fa fa-trash-o "></i>
                                            </button>
                                        </td>
                                    </tr>
                                @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </section>
@endsection

