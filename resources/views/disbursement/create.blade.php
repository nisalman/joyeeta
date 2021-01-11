@extends('layouts.app')

@section('content')
    <section class="wrapper">
        <div class="row">
            <div class="col-lg-12">
                <section class="card">
                    <header class="card-header">
                        Transaction
                    </header>
                    <div class="col-lg-8">
                        <div class="card-body">
                            {!! Form::open(['route' => 'disbursement.store'], ['method'=>'post']) !!}
                            <div class="form-group row">
                                    <label for="inputEmail3" class="col-sm-3 col-form-label">Store Name</label>
                                    <div class="col-sm-9">
                                        <select class="form-control form-control-sm mb-2" name="storeId">
                                            <option> Select</option>
                                            @foreach($storeList as $store)
                                                <option value="{{$store->id}}"> {{$store->name}} </option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="inputPassword3" class="col-sm-3 col-form-label">Commission</label>
                                    <div class="col-sm-9">
                                        <input type="number" class="form-control" name="commission"
                                               aria-describedby="basic-addon3">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="inputPassword3" class="col-sm-3 col-form-label">Disbursemant</label>
                                    <div class="col-sm-9">
                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" name="isDisvursed"
                                                   id="gridRadios1" value="1" checked>
                                            <label class="form-check-label" for="gridRadios1">
                                                Yes
                                            </label>

                                        </div>
                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" name="isDisvursed"
                                                   id="gridRadios2" value="2">
                                            <label class="form-check-label" for="gridRadios2">
                                                No
                                            </label>
                                        </div>
                                    </div>
                                </div>

                                    <div class="form-group row">
                                        <label for="inputPassword3" class="col-sm-3 col-form-label">Payment
                                            Amount</label>
                                        <div class="col-sm-9">
                                            <input type="text" name="paymentAmount"
                                                   class="form-control"/>
                                        </div>
                                    </div>

                                <div class="form-group row">
                                    <label for="inputPassword3" class="col-sm-3 col-form-label">Payment Details</label>
                                    <div class="col-sm-9">
                                        <input type="text" class="form-control" value="" id="customerAddress" name="paymentDetails">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="inputPassword3" class="col-sm-3 col-form-label">Net Payable</label>
                                    <div class="col-sm-9">
                                        <input type="name" class="form-control" name="netPayable">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="inputPassword3" class="col-sm-3 col-form-label">Discount</label>
                                    <div class="col-sm-9">
                                        <input type="number" class="form-control" name="discount"
                                               aria-describedby="basic-addon3">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <div class="col-sm-10">
                                        <button type="submit" class="btn btn-primary">Save</button>
                                    </div>
                                </div>
                            {!! Form::close() !!}

                        </div>
                    </div>
                </section>

            </div>
        </div>
    </section>
@endsection



