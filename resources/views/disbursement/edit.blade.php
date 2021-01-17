@extends('layouts.app')

@section('content')
    <section class="wrapper">
        <div class="row">
            <div class="col-lg-12">
                <section class="card">
                    <header class="card-header">
                        Disbursement
                    </header>
                    <div class="col-lg-8">
                        @include('layouts.partial.validationMessage')
                        <div class="card-body">
                            {!! Form::open(['route' => 'disbursement.store'], ['method'=>'post']) !!}

                            <div class="form-group row">
                                <label for="inputPassword3" class="col-sm-3 col-form-label">Location</label>
                                <div class="col-sm-9">
                                    <select class="form-control form-control-sm mb-2" name="storeLocation">
                                        <option> Select Location</option>
                                        @foreach($allLocation as $location)
                                            <option value="{{ $location->id }}" {{ ( $location->id == $disbursement->store->location->id) ? 'selected' : '' }}>
                                                {{ $location->name }}
                                            </option>
                                        @endforeach

                                    </select>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputPassword3" class="col-sm-3 col-form-label">Store</label>
                                <div class="col-sm-9">
                                    <select name="storeId" class="form-control">
                                        <option>--Select Store--</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputPassword3" class="col-sm-3 col-form-label">Commission</label>
                                <div class="col-sm-9">
                                    <input type="number" class="form-control" name="commission"
                                           aria-describedby="basic-addon3" value="{{$disbursement->commission_amount}}">
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
                                    <input type="text" name="paymentAmount" value="{{$disbursement->payment_amount}}"
                                           class="form-control"/>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="inputPassword3" class="col-sm-3 col-form-label">Payment Details</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control" value="" id="customerAddress"
                                           name="paymentDetails" value="{{$disbursement->payment_detail}}">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputPassword3" class="col-sm-3 col-form-label">Net Payable</label>
                                <div class="col-sm-9">
                                    <input type="name" class="form-control" name="netPayable" value="{{$disbursement->net_payable}}">
                                </div>
                            </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputPassword3" class="col-sm-3 col-form-label">Discount</label>
                                <div class="col-sm-9">
                                    <input type="number" class="form-control" name="discount"
                                           aria-describedby="basic-addon3" value="{{$disbursement->discount}}">
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="col-form-label col-lg-3 col-sm-12 ">Date Range</label>
                                <div class="col-lg-6 col-md-9 col-sm-12">
                                    <div class="input-group" data-date="12/07/2017" data-date-format="mm/dd/yyyy">
                                        <input type="date" class="form-control rounded dpd1" name="from" value="{{$disbursement->from}}">
                                        <span class="px-3 py-2" >To</span>
                                        <input type="date" class="form-control rounded dpd2" name="to" value="{{$disbursement->to}}">

                                    </div>
                                </div>
                            </div>

                            <div class="form-group row">
                                <div class="col-sm-10">
                                    <button type="submit" class="btn btn-primary">Update</button>
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


<script src="{{asset('admin/js/jquery.js')}}"></script>

<script type="text/javascript">
    jQuery(document).ready(function () {
        var pathname = window.location.pathname; // Returns path only (/path/example.html)

        var slicedUrl = pathname.slice(0,19);


        jQuery('select[name="storeLocation"]').on('change', function () {
            var countryID = jQuery(this).val();
            var url= slicedUrl+'/getStores/' + countryID;
            if (countryID) {
                jQuery.ajax({
                    url: url,
                    type: "GET",
                    dataType: "json",
                    success: function (data) {
                        console.log(data);
                        jQuery('select[name="storeId"]').empty();
                        jQuery.each(data, function (key, value) {
                            $('select[name="storeId"]').append('<option value="' + key + '">' + value + '</option>');
                        });
                    }
                });
            } else {
                $('select[name="state"]').empty();
            }
        });
    });
</script>


