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
                            {{-- <div class="form-group row">
                                     <label for="inputEmail3" class="col-sm-3 col-form-label">Store Name</label>
                                     <div class="col-sm-9">
                                         <select class="form-control form-control-sm mb-2" name="storeId">
                                             <option> Select</option>
                                             @foreach($storeList as $store)
                                                 <option value="{{$store->id}}"> {{$store->name}} </option>
                                             @endforeach
                                         </select>
                                     </div>
                                 </div>--}}
                            <div class="form-group row">
                                <label for="inputPassword3" class="col-sm-3 col-form-label">Location</label>
                                <div class="col-sm-9">
                                    <select class="form-control form-control-sm mb-2" name="storeLocation">
                                        <option> Select Location</option>
                                        @foreach($allLocation as $location)
                                            <option value="{{$location->id}}"> {{$location->name}} </option>
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
                                <label for="inputPassword3" class="col-sm-3 col-form-label">Payment Details</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control" value="" id="customerAddress"
                                           name="paymentDetails">
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="col-form-label col-lg-3 col-sm-12 ">Date Range</label>
                                <div class="col-lg-6 col-md-9 col-sm-12">
                                    <div class="input-group" data-date="12/07/2017" data-date-format="mm/dd/yyyy">
                                        <input type="date" class="form-control rounded dpd1" name="from">
                                        <span class="px-3 py-2">To</span>
                                        <input type="date" class="form-control rounded dpd2" name="to">

                                    </div>
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


<script src="{{asset('admin/js/jquery.js')}}"></script>

<script type="text/javascript">
    jQuery(document).ready(function () {
        jQuery('select[name="storeLocation"]').on('change', function () {
            var countryID = jQuery(this).val();
            if (countryID) {
                jQuery.ajax({
                    url: 'getStores/' + countryID,
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


