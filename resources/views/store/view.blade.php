@extends('layouts.app')

@section('content')
    <section class="wrapper">
        <div class="row">
            <div class="col-lg-12">
                <section class="card">
                    <header class="card-header">
                        Store Table
                    </header>
                    @include('layouts.partial.validationMessage')
                    <div class="card-body">
                        <div class="adv-table">
                            <table class="display table table-bordered table-striped" id="dynamic-table">
                                <thead>
                                <tr>
                                    <th>Name</th>
                                    <th>Location</th>
                                    <th>Number</th>
                                    <th>Contact Name</th>
                                    <th>Contact Number</th>
                                    <th>Payment Method</th>
                                    <th>Bank/MFS name</th>
                                    <th>payment_details</th>
                                    <th>Action</th>
                                </tr>
                                </thead>
                                <tbody>
                                @foreach($stores as $store)
                                <tr class="gradeX">
                                    <td>{{$store->name}}</td>
                                    <td>{{$store->location->name}}</td>
                                    <td>{{$store->location->prefix}}-{{$store->number}}</td>
                                    <td>{{$store->contact_name}}</td>
                                    <td>{{$store->contact_number}}</td>
                                    <td>{{ paymentName($store->payment_method)}}</td>
                                    <td>{{$store->bank_mfs_name}}</td>
                                    <td>{{$store->payment_details}}</td>
                                    <td>
{{----}}
                                        <a href="{{route('store.edit', $store->id)}}"><button class="btn btn-primary btn-sm"><i class="fa fa-pencil"></i></button></a>

                                        @if($store->is_active==0)
                                        <a href="{{route('store.active', $store->id)}}">
                                            <button class="btn btn-success btn-sm view-btn"><i
                                                    class="fa fa-check"></i>
                                            </button>
                                        </a>
                                        @else
                                            <a href="{{route('store.deactivate', $store->id)}}">
                                                <button class="btn btn-danger btn-sm view-btn"><i
                                                        class="fa fa-ban"></i>
                                                </button>
                                            </a>
                                        @endif
                                    </td>
                                </tr>
                                @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </section>
@endsection

