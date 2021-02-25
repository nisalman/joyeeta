@extends('layouts.app')

@section('content')
    <section class="wrapper">
        <div class="row">
            <div class="col-lg-12">
                <section class="card">
                    <header class="card-header">
                        Transaction
                    </header>

                    <div class="col-lg-12">
                        @include('layouts.partial.validationMessage')
                        <div class="card-body">
                            {!! Form::open(['route' => 'transaction.store'], ['method'=>'post']) !!}

                            @can('isSuperAdmin','isAdmin')
                                <div class="form-group row">
                                    <label for="inputPassword3" class="col-sm-2 col-form-label">Location</label>
                                    <div class="col-sm-4">
                                        <select class="form-control form-control-sm mb-2" name="storeLocation">
                                            <option value="0"> Select Location</option>
                                            @foreach($allLocation as $location)
                                                <option value="{{$location->id}}"> {{$location->name}} </option>
                                            @endforeach
                                        </select>
                                    </div>

                                    <label for="inputPassword3" class="col-sm-2 col-form-label">Store</label>
                                    <div class="col-sm-4">
                                        <select name="store_id" class="form-control">
                                            <option value="0">--Select Store--</option>
                                        </select>
                                    </div>
                                </div>
                            @endcan
                            @cannot('isSuperAdmin')
                                <div class="form-group row">
                                    <label for="inputPassword3" class="col-sm-2 col-form-label">Location:</label>
                                    <div class="col-sm-4">
                                        <input type="hidden" name="storeLocation" value="{{$locationData->id}}" id="storeLocation" class="form-control"/ >
                                        {{$locationData->name}}
                                    </div>

                                    <label for="inputPassword3" class="col-sm-2 col-form-label">Store</label>
                                    <div class="col-sm-4">
                                        <select class="form-control form-control-sm mb-1" name="store_id">
                                            <option> Select Store</option>
                                            @foreach($shopData as $shop)
                                                <option value="{{$shop->id}}"> {{$shop->name}} </option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                            @endcannot
                            <div class="form-group row">
                                <label for="inputPassword3" class="col-sm-2 col-form-label">Customer
                                    Number</label>
                                <div class="col-sm-4">
                                    <input onfocusout="clearInput()" type="number" name="customer_number" id="customer_number" class="form-control"/>
                                    <div id="customerNumber">
                                    </div>
                                </div>

                                <label for="inputPassword3" class="col-sm-2 col-form-label">Customer Name</label>
                                <div class="col-sm-4">
                                    <input type="text" id='customerName' name="customerName" class="form-control"
                                           value="">
                                </div>
                            </div>


                            <div class="form-group row">
                                <label for="inputPassword3" class="col-sm-2 col-form-label">Customer address</label>
                                <div class="col-sm-4">
                                    <input type="text" class="form-control" name="customerAddress" value=""
                                           id="customerAddress">
                                </div>
                                <label for="inputPassword3" class="col-sm-2 col-form-label">Final Payable
                                    Amount</label>
                                <div class="col-sm-4">
                                    <input type="number" class="form-control" name="finalPayable">
                                </div>
                            </div>


                            <div class="form-group row">

                                <label for="inputPassword3" class="col-sm-2 col-form-label">Card Type</label>
                                <div class="col-sm-4">
                                    <select class="form-control form-control-sm mb-2" name="cardType">
                                        <option value="0">Select Card Type</option>
                                        <option value="1"> Amex</option>
                                        <option value="2"> Visa</option>
                                        <option value="3"> Master </option>
                                        <option value="4"> American Express</option>
                                    </select>
                                </div>
                                <label for="inputPassword3" class="col-sm-2 col-form-label">Card No</label>
                                <div class="col-sm-4">
                                    <input type="text" class="form-control" name="cardNo">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputPassword3" class="col-sm-2 col-form-label">APPR Code</label>
                                <div class="col-sm-4">
                                    <input type="text" class="form-control" name="apprCode">
                                </div>
                                <label for="inputPassword3" class="col-sm-2 col-form-label" id="myDate">Date Time
                                </label>
                                <div class="col-sm-4">
                                    <input type="datetime-local" class="form-control" name="dateTime">
                                </div>
                            </div>

                        </div>

                        <div class="form-group row">
                            <div class="col-sm-3">
                            </div>
                            <div class="col-sm-2">
                                <button type="submit" class="btn btn-info">Save</button>
                            </div>
                            <div class="col-sm-4">
                                <button type="submit" value="pr" name="pr" class="btn btn-success">Print and Save
                                </button>
                            </div>
                            <div class="col-sm-3">
                            </div>

                        </div>
                        {!! Form::close() !!}

                    </div>
                </section>
            </div>
        </div>
    </section>

@endsection
<script src="{{asset('admin/js/jquery.js')}}"></script>

<script>
    $(document).ready(function () {
        $('#customer_number').keyup(function () {
            var query = $(this).val();
            if (query != '') {
                var _token = $('input[name="_token"]').val();
                $.ajax({
                    url: "{{ route('autocomplete') }}",
                    method: "GET",
                    data: {query: query, _token: _token},
                    success: function (data) {
                        console.log(data);
                        $('#customerNumber').fadeIn();
                        $('#customerNumber').html(data);
                    }
                });
            }
        });

        $(document).on('click', 'li', function () {
            $('#customer_number').val($(this).text());
            $('#customerNumber').fadeOut();


            var id = $('#customer_number').val();
            console.log(id);
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="_token"]').attr('content')
                }
            });
            jQuery.ajax({
                url: "{{ url('/admin/check-number')}}" + '/' + id,
                method: 'GET',
                data: {
                    id: jQuery('#mobile').val(),
                },
                success: function (data) {
                    if (data == 0) {
                        console.log(data);
                    } else {
                        console.log(data);

                        $("#cusStatus").css({"visibility": "hidden"});
                        $("#customerName").val(data.name);
                        $("#customerAddress").val(data.address);
                        $("#customerName").prop('readOnly', true);
                        $("#customerAddress").prop('readOnly', true);
                    }
                }
            });


        });

    });
</script>

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
                        jQuery('select[name="store_id"]').empty();
                        jQuery.each(data, function (key, value) {
                            $('select[name="store_id"]').append('<option value="' + key + '">' + value + '</option>');
                        });
                    }
                });
            } else {
                $('select[name="store_id"]').empty();
            }
        });
    });
</script>



{{--select class=" js-example-basic-multiple itemName" multiple="multiple" style="width:500px;" name="itemName"></select>

<script src="http://code.jquery.com/jquery-3.3.1.min.js"
        integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
        crossorigin="anonymous">
</script>
<script src="{{asset('admin/assets/select2/js/select2.min.js')}}"></script>
<script type="text/javascript">

    $('.itemName').select2({
        placeholder: 'Select an item',
        ajax: {
            url: '/select2-autocomplete-ajax',
            dataType: 'json',
            method:'GET',
            delay: 250,
            processResults: function (data) {
                return {
                    results:  $.map(data, function (item) {
                        return {
                            text: item.mobile,
                            id: item.id
                        }
                    })
                };
            },
            cache: true
        }
    });


</script>--}}{{--



<script>
    jQuery(document).ready(function () {
        jQuery('#ajaxSubmit').click(function (e) {
            e.preventDefault();

            var id = $('#getCustomerNumber').val();
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="_token"]').attr('content')
                }
            });
            jQuery.ajax({
                url: "{{ url('/admin/check-number')}}" + '/' + id,
                method: 'GET',
                data: {
                    id: jQuery('#mobile').val(),
                },
                success: function (data) {
                    if (data == 0) {
                        $("#cusStatus").css({"visibility": "visible"});
                        console.log(data);
                    } else {
                        $("#cusStatus").css({"visibility": "hidden"});
                        $("#customerName").val(data.name);
                        $("#customerAddress").val(data.address);
                    }
                }
            });
        });
    });
</script>
--}}

<script>
    function clearInput(){
        document.getElementById('customerAddress').value = '';
        document.getElementById('customerName').value = '';
        $("#customerName").prop('readOnly', false);
        $("#customerAddress").prop('readOnly', false);
        $('#customerNumber').fadeOut();

        /*var list = document.getElementById("numberDropDown");
        document.getElementById("numberDropDown").outerHTML = "";
        $('#numberDropDown').empty();
        $(".dropdown-menu").css("display","");
        $(".dropdown-menu").css("position","");*/




    }
</script>
