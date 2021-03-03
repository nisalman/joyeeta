@extends('layouts.app')

@section('content')

    <section class="wrapper">
        <!-- invoice start-->
        <section>
            <div class="card card-primary">
                <!--<div class="card-heading navyblue"> INVOICE</div>-->
                <div class="card-body">
                    <div class="row invoice-list">
                        <div class="col-md-12 text-center corporate-id">
                            <img src="{{asset('login_asset/images/icons/joyeeta_foundation.jpg')}}" height="115px" width="115px" alt="">
                        </div>
                        <div class="col-lg-4 col-sm-4">
                            <h4>Billing From</h4>
                            <p>
                                Joyeeta Foundation <br>
                                Concord Royal Court (6th Floor), <br>
                                275/G, Road No: 27 (Old)<br>
                                Dhanmondi, Dhaka<br>
                                Tel: +8802-58152478
                            </p>
                        </div>
                        <div class="col-lg-4 col-sm-4">
                            <h4>Billing Customer</h4>
                            <p>
                                {{$customer->name}}<br>
                                {{$customer->mobile}}<br>
                                {{$customer->address}}<br>
                            </p>
                        </div>
                        <div class="col-lg-4 col-sm-4">
                            <h4>INVOICE INFO</h4>
                            <ul class="unstyled">
                                <li>Invoice Number : <strong>{{$trans->invoice_no}}</strong></li>
                                <li>Invoice Date : {{$trans->date}}</li>
                                <li>Invoice Time : {{$trans->time}}</li>
                                <li>APP Code     : {{$trans->apprCode}}</li>
                                <li>Invoice Status : Paid</li>
                            </ul>
                        </div>
                    </div>
                    <table class="table table-striped table-hover">
                        <thead>
                        <tr>
                            <th>#</th>
                            <th width="22%">Transaction ID</th>
                            <th width="70%" class="hidden-phone">Store Name</th>
                            <th width="8%" >Total</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>#</td>
                            <td>{{$trans->transactionID}}</td>
                            <td >{{$trans->store_name}}</td>
                            <td>{{$trans->receiveable_payment}}</td>
                        </tr>
                        </tbody>
                    </table>
                    <div class="row justify-content-end">
                        <div class="col-lg-4 invoice-block ">
                            <ul class="unstyled amounts">
                                <li><strong>Sub - Total amount :</strong> {{$trans->receiveable_payment}}</li>
                                <li><strong>Discount :</strong> 0%</li>
                                <li><strong>VAT :</strong> 0%</li>
                                <li><strong>{{$trans['card_charge_carrier']}} :</strong> {{$trans['card_charge']}}%</li>
                                <li><strong>Grand Total :</strong> {{$trans->final_pay}}</li>
                            </ul>
                        </div>
                    </div>
                    <div class="text-center invoice-btn">
                        <a class="btn btn-info text-light" id="printBut" onclick="javascript:window.print();"><i
                                class="fa fa-print"></i> Print </a>
                    </div>
                </div>
            </div>
        </section>
        <!-- invoice end-->
    </section>
@endsection
