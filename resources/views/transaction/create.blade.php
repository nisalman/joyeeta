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
                            {!! Form::open(['route' => 'transaction.store'], ['method'=>'post']) !!}

                            @can('isSuperAdmin')

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
                                    <select name="state" class="form-control">
                                        <option>--Select Store--</option>
                                    </select>
                                </div>
                            </div>
                                @endcan
                            @cannot('isSuperAdmin')
                                <div class="form-group row">
                                    <label for="inputPassword3" class="col-sm-3 col-form-label">Location</label>
                                    <div class="col-sm-9">
                                        <select class="form-control form-control-sm mb-2" name="storeLocation">
                                            <option> Select Location</option>
                                            @foreach($shopData as $shop)
                                                <option value="{{$shop->id}}"> {{$shop->name}} </option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                            @endcannot
                            <div class="form-group row">
                                <label for="inputPassword3" class="col-sm-3 col-form-label">Customer
                                    Number</label>
                                <div class="col-sm-9">

                                    <input type="number" name="country_name" id="country_name" class="form-control"/>
                                    <div id="countryList">
                                    </div>
                                </div>
                            </div>


                            <div class="form-group row">
                                <label for="inputPassword3" class="col-sm-3 col-form-label">Customer Name</label>
                                <div class="col-sm-9">
                                    <input type="text" id='customerName' name="customerName" class="form-control"
                                           value="">
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="inputPassword3" class="col-sm-3 col-form-label">Customer address</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control" name="customerAddress" value=""
                                           id="customerAddress">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputPassword3" class="col-sm-3 col-form-label">Net Amount</label>
                                <div class="col-sm-9">
                                    <input type="name" class="form-control" name="netAmount">
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
                                <label for="inputPassword3" class="col-sm-3 col-form-label">Coupon</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control" name="coupon">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputPassword3" class="col-sm-3 col-form-label">Final Payable
                                    Amount</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control" name="finalPayable">
                                </div>
                            </div>


                        </div>


                        <div class="form-group row">
                            <div class="col-sm-2">
                                <button type="submit" class="btn btn-info">Save</button>
                            </div>
                            <div class="col-sm-4">
                                <button type="submit" value="pr" name="pr" class="btn btn-success">Print and Save</button>
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
        $('#country_name').keyup(function () {
            var query = $(this).val();
            if (query != '') {
                var _token = $('input[name="_token"]').val();
                $.ajax({
                    url: "{{ route('autocomplete') }}",
                    method: "GET",
                    data: {query: query, _token: _token},
                    success: function (data) {
                        $('#countryList').fadeIn();
                        $('#countryList').html(data);
                    }
                });
            }
        });

        $(document).on('click', 'li', function () {
            $('#country_name').val($(this).text());
            $('#countryList').fadeOut();


            var id = $('#country_name').val();
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
                        $("#cusStatus").css({"visibility": "hidden"});
                        $("#customerName").val(data.name);
                        $("#customerAddress").val(data.address);
                        $("#customerName").prop('disabled', true);
                        $("#customerAddress").prop('disabled', true);
                    }
                }
            });


        });

    });
</script>

<script type="text/javascript">
    jQuery(document).ready(function ()
    {
        jQuery('select[name="storeLocation"]').on('change',function(){
            var countryID = jQuery(this).val();
            if(countryID)
            {
                jQuery.ajax({
                    url : 'getStores/' +countryID,
                    type : "GET",
                    dataType : "json",
                    success:function(data)
                    {
                        console.log(data);
                        jQuery('select[name="state"]').empty();
                        jQuery.each(data, function(key,value){
                            $('select[name="state"]').append('<option value="'+ key +'">'+ value +'</option>');
                        });
                    }
                });
            }
            else
            {
                $('select[name="state"]').empty();
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


</script>--}}


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

