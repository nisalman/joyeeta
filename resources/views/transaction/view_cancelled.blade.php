@extends('layouts.app')

@section('content')
    <section class="wrapper">
        <div class="row">
            <div class="col-lg-12">
                <section class="card">
                    <header class="card-header">
                        Transaction Data
                    </header>
                    {{--                    @include('transaction.search')--}}
                    <div class="card-body">
                        <div class="adv-table">
                            <table class="display table table-bordered table-striped">
                                <thead>
                                <tr>
                                    <th>Trans ID</th>
                                    <th>Store Name</th>
                                    <th>Location</th>
                                    <th>Customer</th>
                                    <th class="hidden-phone">Final Payable</th>
                                    <th>Disbursed</th>
                                    <th>Status</th>
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
                                        <td class="center hidden-phone">{{$transaction->final_payable}}</td>
                                        <td>
                                            @if($transaction->is_disburse==1)
                                                <span class="badge badge-info label-mini">Yes</span>
                                            @else
                                                <span class="badge badge-danger label-mini">No</span>
                                            @endif
                                        </td>
                                        <td>
                                            @if($transaction->is_cancelled==0)
                                                <span class="badge badge-success label-mini">Active</span>
                                            @else
                                                <span class="badge badge-danger label-mini">Cancelled</span>
                                            @endif
                                        </td>
                                        <td>{{ Carbon\Carbon::parse($transaction->created_at)->format('d/m/Y') }}</td>
                                        <td>

                                            <a href="{{route('transaction.cancel', $transaction->id)}}">
                                                <button class="btn btn-primary btn-sm"><i class="fa fa-window-close"></i>
                                                </button>
                                            </a>
                                            {{--  <button class="btn btn-danger btn-sm"><i class="fa fa-trash-o "></i>
                                              </button>--}}
                                        </td>
                                    </tr>
                                @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </section>
                {!! $transactions->links() !!}



    @endsection
