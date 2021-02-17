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
                            @include('disbursement.search')
                            {!! Form::open(['route' => 'disbursement.batch'], ['method'=>'post']) !!}
                            <button class="btn btn-info">Submit</button>
                            <h6 style="float: right; color: #55bc55">
                                @if(count($searchRes)==0)
                                    @php
                                        toastr()->warning('No data found, try again', 'Sorry');
                                    echo 'No result found';
                                    @endphp
                                @else
                                    @php
                                        echo count($searchRes).' '.'results found for'.' '.$storeId->name.','.$storeId->location->name.' from '.$fromDate.' to '.$toDate;
                                    @endphp
                                @endif
                            </h6><br>


                            <br>
                            <div class="adv-table">
                                <table class="display table table-bordered table-striped">
                                    <thead>
                                    <tr>
                                        <th><input type="checkbox" id="select-all"></th>
                                        <th>Transaction ID</th>
                                        <th>Disbursement</th>
                                        <th>Date</th>
                                        <th>Amount</th>
                                    </tr>
                                    </thead>
                                    <tbody>

                                    @foreach($searchRes as $result)
                                        <tr class="gradeX">

                                            <th><input type="checkbox" name="transID[]" value="{{$result->id}}"></th>
                                            <input type="hidden" name="storeID" value="{{$result->store_id}}">
                                            <td>{{$result->transactionID}}</td>
                                            <td>
                                                @if($result->is_disburse==1)
                                                    <span class="badge badge-info label-mini">Yes</span>
                                                @else
                                                    <span class="badge badge-danger label-mini">No</span>
                                            @endif
                                            <td>{{ Carbon\Carbon::parse($result->created_at)->format('d/m/Y') }}</td>
                                            <td style="text-align: right">{{$result->final_payable}}</td>

                                        </tr>
                                    @endforeach
                                    <tr>
                                        <td colspan="4"></td>
                                        <td style="text-align: right">Total: {{$searchSum}} </td>
                                    </tr>
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
    <script>
        $(document).ready(function () {
            $('#select-all').click(function () {
                $('input[type="checkbox"]').prop('checked', this.checked);
            })
        });
    </script>
@endsection







