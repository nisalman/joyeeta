@extends('layouts.app')

@section('content')
    <section class="wrapper">
        <div class="row">
            <div class="col-lg-12">
                <section class="card">
                    <header class="card-header">
                        ekShop Commission Table
                    </header>
                    @include('layouts.partial.validationMessage')
                    <div class="card-body">
                        <div class="adv-table">
                            <table class="display table table-bordered table-striped" id="dynamic-table">
                                <thead>
                                <tr>
                                    <th>Sl no.</th>
                                    <th>Disbursement Batch ID</th>
                                    <th>Amount</th>
                                    <th>Disburse Date</th>
                                </tr>
                                </thead>
                                <tbody>
                                @foreach($commissions as $key=>$commission)
                                <tr class="gradeX">
                                    <td>{{$key+1}}</td>
                                   <td><a href="{{route('disbursement.batchDetail',$commission->batch_id)}}"
                                          style="color: red"> {{$commission->batch_id}}</a></td>
                                    <td>{{$commission->amount}}</td>
                                    <td>{{\Carbon\Carbon::parse($commission->created_at)->format('d-m-Y')}}</td>

                                </tr>
                                @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </section>
@endsection

