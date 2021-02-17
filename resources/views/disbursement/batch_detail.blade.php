@extends('layouts.app')

@section('content')
    <section class="wrapper">
        <div class="row">
            <div class="col-lg-12">
                <section class="card">
                    <header class="card-header">
                        Disbursement
                    </header>
                    @include('layouts.partial.validationMessage')
                    <div class="col-lg-12">
                        @include('layouts.partial.validationMessage')
                        <div class="card-body">

                            <div class="adv-table">
                                <table class="display table table-bordered table-striped">
                                    <thead>
                                    <tr>
                                        <th>Transaction ID</th>
                                        <th>Disbursement</th>
                                        <th>TransactionDate</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    @foreach($batchTransaction as $transaction)
                                        <tr class="gradeX">

                                            <td>{{$transaction->transactionID}}</td>
                                            <td>{{$transaction->final_payable}}</td>
                                            <td>{{ Carbon\Carbon::parse($transaction->created_at)->format('d/m/Y') }}</td>
                                        </tr>
                                    @endforeach

                                    </tbody>
                                </table>
                                {!! Form::close() !!}

                            </div>
                        </div>
                    </div>
                </section>

            </div>
        </div>
    </section>

@endsection





