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
                    @include('layouts.partial.validationMessage')

                    <div class="card-body">
                        <div class="adv-table">
                            <table class="display table table-bordered table-striped">
                                <thead>
                                <tr>
                                    <th>Trans ID</th>
                                    <th>Store Name</th>
                                    @cannot('isOperator','isAdmin')
                                        <th>Location</th>
                                    @endcannot
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
                                        @cannot('isOperator', 'isAdmin')
                                            <td>{{$transaction->location->name}}</td>
                                        @endcannot
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
                                            <button class="btn btn-info btn-sm view-btn" data-toggle="modal"
                                                    data-target="#exampleModalCenter" data-id="{{$transaction->id}}"><i
                                                    class="fa fa-eye"></i>
                                            </button>

                                            @if($transaction->is_cancelled==1)
                                                <a href="{{route('transaction.active', $transaction->id)}}">
                                                    <button class="btn btn-success btn-sm view-btn"><i
                                                            class="fa fa-check"></i>
                                                    </button>
                                                </a>
                                            @else
                                                <a href="{{route('transaction.cancel', $transaction->id)}}">
                                                    <button class="btn btn-danger btn-sm view-btn"><i
                                                            class="fa fa-ban"></i>
                                                    </button>
                                                </a>
                                            @endif
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

                @include('modal')
                @endsection
                @push('scripts')
                    <script>
                        $('.btn-info').on('click', function () {
                            var sendUrl = window.location.pathname;
                            $('#exampleModalCenter').trigger("reset");
                            $('#exampleModalCenter').modal('show');
                            var trans_id = $(this).data('id');
                            $.get(sendUrl + '/' + trans_id, function (data) {
                                console.log(data);
                                $("#exampleModalCenterTitle").text("Transaction ID: " + data.transactionID);
                                $("#storeLocation").text(data.location_id);
                                $("#storeName").text(data.store_id);
                                $("#customerName").text(data.customerName);
                                $("#customerNumber").text(data.customerMobile);
                                $("#address").text(data.customerAddress);
                                $("#paidAmount").text(data.final_payable);
                                $("#cardNumber").text(data.cardNo);
                                $("#cardType").text(data.cardType);
                                $("#cardCharge").text(data.card_charge + '%');
                                $("#apprCode").text(data.apprCode);
                                $("#td").text(data.dateTime);

                            });
                        });
                    </script>
    @endpush
