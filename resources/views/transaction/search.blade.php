@include('layouts.partial.validationMessage')

{!! Form::open(['route' => 'transaction.search'], ['method'=>'post']) !!}

<div class="form-group row">
    <div class="col-sm-12 col-lg-3 col-md-12">
        <input type="text" name="transId" id="transId" class="form-control" placeholder="Transaction ID"/>

    </div>

    <div class="col-sm-12 col-lg-3 col-md-12">
        <input type="text" name="number" id="transId" class="form-control" placeholder="Customer Number"/>
    </div>

    <div class="col-sm-12 col-lg-3 col-md-12">
        <select class="form-control form-control-sm mb-2" name="storeLocation">
            <option value="0"> Select Location</option>
             @foreach($allLocation as $location)
                 <option value="{{$location->id}}"> {{$location->name}} </option>
             @endforeach
        </select>

    </div>

    <div class="col-sm-12 col-lg-3 col-md-12">
        <select name="storeId" class="form-control">
            <option>--Select Store--</option>
        </select>
    </div>
    <div class="col-sm-12 col-lg-3 col-md-12">
        <select name="isDisbursed" class="form-control">
            <option>Disburse?</option>
            <option value="1">Yes</option>
            <option value="0">No</option>
        </select>
    </div>
    <div class="col-lg-5 col-md-12 col-sm-12">
        <div class="input-group" data-date="12/07/2017" data-date-format="mm/dd/yyyy">
            <input type="date" class="form-control rounded dpd1" placeholder="from date" name="from">
            <span class="px-3 py-2">To</span>
            <input type="date" class="form-control rounded dpd2" name="to">
        </div>
    </div>
    <div class="col-lg-1 col-md-12 col-sm-12">
        <button type="submit" class="btn btn-outline-info">Search</button>
    </div>
</div>

{!! Form::close() !!}

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
