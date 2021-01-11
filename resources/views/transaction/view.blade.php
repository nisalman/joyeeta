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
                                    <th>Store Name</th>
                                    <th>Location</th>
                                    <th>Customer</th>
                                    <th>Net Amount</th>
                                    <th>Discount</th>
                                    <th class="hidden-phone">Coupon</th>
                                    <th class="hidden-phone">Final Payable</th>
                                    <th>Action</th>
                                </tr>
                                </thead>
                                <tbody>
                                @foreach($transactions as $transaction)
                                <tr class="gradeX">
                                    <td>{{$transaction->name}}</td>
                                    <td>Internet
                                        Explorer 4.0
                                    </td>
                                    <td>Win 95+</td>
                                    <td class="center hidden-phone">4</td>
                                    <td class="center hidden-phone">X</td>
                                    <td>
                                        <button class="btn btn-success btn-sm"><i class="fa fa-check"></i></button>
                                        <button class="btn btn-primary btn-sm"><i class="fa fa-pencil"></i></button>
                                        <button class="btn btn-danger btn-sm"><i class="fa fa-trash-o "></i></button>
                                    </td>
                                </tr>
                                @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </section>
@endsection
