@include('layouts.partial.validationMessage')

{!! Form::open(['route' => 'disbursement.store'], ['method'=>'post']) !!}

<div class="form-group row">
    <div class="col-sm-12 col-lg-3 col-md-12">
        {{--                                    <label for="inputPassword3">Location</label>--}}
        <select class="form-control form-control-sm mb-2" name="storeLocation">
            <option> Select Location</option>
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
    <div class="col-lg-5 col-md-12 col-sm-12">
        <div class="input-group" data-date="12/07/2017" data-date-format="mm/dd/yyyy">
            <input type="datetime-local"  class="form-control" placeholder="from date" name="from">
            <span class="px-3 py-2">To</span>
            <input type="datetime-local" class="form-control rounded dpd2" name="to">
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
