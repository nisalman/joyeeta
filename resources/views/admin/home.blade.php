@extends('layouts.app')

@section('content')

    <section class="wrapper">
        <!--state overview start-->
      {{--  @can('isSuperAdmin')
            <p>You are Super Admin</p>
        @endcanany
        @can('isLocalAdmin')

            <p>You are Local Admin</p>
        @endcan--}}
        @include('layouts.partial.validationMessage')
        @cannot('isSuperAdmin')
            <div class="row state-overview">
                <div class="col-lg-6 col-sm-6">
                    <section class="card">
                        <div class="symbol terques">
                            <i class="fa fa-shopping-cart"></i>
                        </div>
                        <div class="value">
                            <h1 class="">
                                {{$adminOperatorCount['store']}}
                            </h1>
                            <p>Stores</p>
                        </div>
                    </section>
                </div>
                <div class="col-lg-6 col-sm-6">
                    <section class="card">
                        <div class="symbol red">
                            <i class="fa fa-money"></i>
                        </div>
                        <div class="value">
                            <h1 class="">
                                {{$adminOperatorCount['transaction']}}
                            </h1>
                            <p>Transactions</p>
                        </div>
                    </section>
                </div>
            </div>
        @endcannot

        @can('isSuperAdmin')
            <div class="row state-overview">
                <div class="col-lg-6 col-sm-6">
                    <section class="card">
                        <div class="symbol terques">
                            <i class="fa fa-location-arrow"></i>
                        </div>
                        <div class="value">
                            <h1 class="">
                                {{$adminCount['location']}}
                            </h1>
                            <p>Locations</p>
                        </div>
                    </section>
                </div>
                <div class="col-lg-6 col-sm-6">
                    <section class="card">
                        <div class="symbol red">
                            <i class="fa fa-shopping-cart"></i>
                        </div>
                        <div class="value">
                            <h1 class="">
                                {{$adminCount['store']}}
                            </h1>
                            <p>Stores</p>
                        </div>
                    </section>
                </div>
                <div class="col-lg-6 col-sm-6">
                    <section class="card">
                        <div class="symbol yellow">
                            <i class="fa fa-money"></i>
                        </div>
                        <div class="value">
                            <h1 class="">
                                {{$adminCount['transaction']}}
                            </h1>
                            <p>Transactions</p>
                        </div>
                    </section>
                </div>
                <div class="col-lg-6 col-sm-6">
                    <section class="card">
                        <div class="symbol blue">
                            <i class="fa fa-bar-chart-o"></i>
                        </div>
                        <div class="value">
                            <h1 class="">
                                {{$adminCount['disbursement']}}
                            </h1>
                            <p>Disbursements</p>
                        </div>
                    </section>
                </div>
            </div>

    @endcan
    <!--state overview end-->



@endsection


