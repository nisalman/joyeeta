@extends('layouts.app')

@section('content')
    <section class="wrapper">
        <div class="row">
            <div class="col-lg-12">
                <section class="card">
                    <header class="card-header">
                        Disbursement
                    </header>
                    <div class="col-lg-12">
                        @include('layouts.partial.validationMessage')
                        <div class="card-body">
                            @include('disbursement.search')
                            <div class="adv-table">
                                <table class="display table table-bordered table-striped">
                                    <thead>
                                    <tr>
                                        <th>check</th>
                                        <th>Paid Amount</th>
                                        <th>Payment Detail</th>
                                        <th>Net Payable</th>
                                        <th>Discount</th>

                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr class="gradeX">
                                    </tr>

                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </section>

            </div>
        </div>
    </section>

@endsection





