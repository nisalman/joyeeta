@extends('layouts.app')

@section('content')
    <section class="wrapper">
        <div class="row">
            <div class="col-lg-12">
                <section class="card">
                    <header class="card-header">
                        Disbursement batch list
                    </header>
                    @include('layouts.partial.validationMessage')

                    <div class="card-body">
                        <div class="adv-table">
                            <table class="display table table-bordered table-striped" id="dynamic-table">
                                <thead>
                                <tr>
                                    <th>Batch ID</th>
                                    <th>Location</th>
                                    <th>Store Name</th>
                                    <th>Paid Amount</th>
                                    <th>ekShop Commission</th>
                                    <th>Final payment</th>
                                    <th>From - To</th>
                                    {{--<th>Net Payable</th>--}}
                                    {{--                                    <th class="hidden-phone">Disbursement</th>--}}
                                    @can('isSuperAdmin')
                                        <th>Action</th>
                                    @endcan
                                </tr>
                                </thead>
                                <tbody>

                                @foreach($trans as $key=>$batchTran)

                                    <tr class="gradeX">
                                        <td><a href="{{route('disbursement.batchDetail',$key)}}"
                                               style="color: red"> {{$key}}</a></td>
                                        <td>{{ \App\Store::find($batchTran['store_id'])->location->name}}</td>
                                        <td>{{ \App\Store::find($batchTran['store_id'])->name}}</td>
                                        <td>{{$batchTran['total_pay']}}</td>
                                        <td>{{$batchTran['ekshop_commission']}}</td>
                                        <td>{{$batchTran['final_pay']}}</td>
                                        <td>{{Carbon\Carbon::parse($batchTran['fromDate'])->format('d/m/y')}} - {{Carbon\Carbon::parse($batchTran['toDate'])->format('d/m/y')}}</td>
                                        {{--<td>{{Carbon\Carbon::parse($batchTran['fromDate'])}}</td>--}}
                                        <td>
                                            {!! Form::open(['route' => 'disbursement.payment'], ['method'=>'post']) !!}
                                            <input type="hidden" name="batchID" value="{{$key}}">
                                            <input type="hidden" name="transactionID" value="{{$batchTran['transactionID']}}">
                                            <input type="hidden" name="storeID" value="{{$batchTran['store_id']}}">
                                            <input type="hidden" name="totalAmount" value="{{$batchTran['total_pay']}}">
                                            <button type="submit" class="btn btn-sm btn-outline-info">Disburse</button>

                                            <a href="{{route('batch.delete',$key)}}"> <button type="button" class="btn btn-sm btn-outline-danger">Delete</button></a>
                                            {!! Form::close() !!}
                                        </td>
                                    </tr>
                                @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </section>
                <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog"
                     aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalCenterTitle">Modal title</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                ...
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                <button type="button" class="btn btn-primary">Save changes</button>
                            </div>
                        </div>
                    </div>
                </div>
@endsection

