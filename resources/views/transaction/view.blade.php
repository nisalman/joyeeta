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
                                    <th>Trans ID</th>
                                    <th>Store Name</th>
                                    <th>Location</th>
                                    <th>Customer</th>
                                    <th>Net Amount</th>
                                    <th>Discount</th>
                                    <th class="hidden-phone">Coupon</th>
                                    <th class="hidden-phone">Final Payable</th>
                                    <th>Disbursed</th>
                                    <th>Date</th>
                                    <th>Action</th>
                                </tr>
                                </thead>
                                <tbody>
                                @foreach($transactions as $transaction)
                                    <tr class="gradeX">
                                        <td>{{$transaction->transactionID}}</td>
                                        <td>{{$transaction->store->name}}</td>
                                        <td>{{$transaction->location->name}}</td>
                                        <td>{{$transaction->customer->name}}</td>
                                        <td>{{$transaction->net_amount}}</td>
                                        <td>{{$transaction->discount}}</td>
                                        <td>{{$transaction->coupon}}</td>
                                        <td class="center hidden-phone">{{$transaction->final_payable}}</td>
                                        <td>
                                            @if($transaction->is_disburse==1)
                                                <span class="badge badge-info label-mini">Yes</span>
                                            @else
                                                <span class="badge badge-danger label-mini">No</span>
                                            @endif
                                        </td>
                                        <td>{{ Carbon\Carbon::parse($transaction->created_at)->format('d/m/Y') }}</td>
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

