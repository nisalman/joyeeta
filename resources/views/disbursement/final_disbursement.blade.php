@extends('layouts.app')

@section('content')
    <section class="wrapper">
        <div class="row">
            <div class="col-lg-3">
            </div>
            <div class="col-lg-6">
                <section class="card">
                    <header class="card-header">
                        Advanced Table
                    </header>
                    @include('layouts.partial.validationMessage')

                    <div class="card-body">
                        Batch ID: {{$request->batchID}}<br>
                        Transaction ID: {{$request->transactionID}}<br>
                        Store ID: {{$request->storeID}}<br>
                        Total amount: {{$request->totalAmount}}<br>
                        <form action="{{ route('disbursement.confirmation') }}" enctype="multipart/form-data" method="post">
                            {{ method_field('post') }}
                            @csrf
                            Proof:<br><input type="file" name="image"> <br><br>
                        Comment:<br><textarea name="comment" cols="38" rows="4"></textarea> <br>
                        <input type="hidden" name="batchID" value="{{$request->batchID}}">
                        <input type="hidden" name="transactionID" value="{{$request->transactionID}}">
                        <input type="hidden" name="storeID" value="{{$request->storeID}}">
                        <input type="hidden" name="totalAmount" value="{{$request->totalAmount}}">
                        <input type="hidden" name="commissionAmount" value="{{$commissionAmount}}">
                        <button type="submit" class="btn btn-sm btn-success">Submit</button>
                        </form>

                    </div>
                    <div class="col-lg-3">
                    </div>

                </section>
            </div>
            <div class="col-lg-3">
            </div>




@endsection

