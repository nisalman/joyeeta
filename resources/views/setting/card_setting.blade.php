@extends('layouts.app')

@section('content')
    <section class="wrapper">
        <div class="row">
            <div class="col-lg-6">
                <section class="card">
                    <header class="card-header">
                        Card charge and carry Settings
                    </header>
                    @include('layouts.partial.validationMessage')
                    <div class="card-body">
                        {!! Form::open(['route' => ['card.updateData']]) !!}
                        {{ method_field('POST') }}
                        <div class="form-group">
                            <div class="adv-table">
                                <table class="display table table-bordered table-striped" id="">
                                    <thead>
                                    <tr>
                                        <th>Card Name</th>
                                        <th>Charge</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    @foreach($cards as $card)
                                        <tr>
                                            <td>{{$card->name}}</td>
                                            <td ><input  class="form-control" type="text" name="charge[{{$card->id}}]" value="{{$card->charge}}"></td>
                                        </tr>
                                    @endforeach
                                    </tbody>
                                </table>
                                <br>
                                <fieldset class="form-group">
                                    <div class="row">
                                        <legend class="col-form-label col-sm-3 pt-0"><b>Transaction Cost carried by:</b></legend>
                                        <div class="col-sm-9">
                                            <div class="form-check">
                                                <input class="form-check-input" type="radio" name="costCarry"
                                                       id="gridRadios1" value="1" checked>
                                                <label class="form-check-label" for="gridRadios1">
                                                    Customer
                                                </label>
                                            </div>
                                            <div class="form-check">
                                                <input class="form-check-input" type="radio" name="costCarry"
                                                       id="gridRadios2" value="2">
                                                <label class="form-check-label" for="gridRadios2">
                                                    Shop Owner
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                </fieldset>
                            </div>
                        </div>

                        <button type="submit" class="btn btn-primary">Update</button>
                        {!! Form::close() !!}

                    </div>
                </section>
            </div>
            <div class="col-lg-6">
                <section class="card">
                    <header class="card-header">
                        Current Settings
                    </header>
                    <div class="card-body">
                        <div class="card-body bio-graph-info">
                            <!--<h1>New Dashboard BS3 </h1>-->
                            <div class="adv-table">
                                <table class="display table table-bordered table-striped" id="">
                                    <thead>
                                    <tr>
                                        <th>SL</th>
                                        <th>Card Name</th>
                                        <th>Charge</th>
                                        <th>Carried by</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    @foreach($cards as $card)
                                        <tr>
                                            <td>{{$card->id}}</td>
                                            <td>{{$card->name}}</td>
                                            <td>{{$card->charge}}%</td>
                                            <td>
                                                @if($card->paid_person==1)
                                                    Customer
                                                @else
                                                    Shop owner
                                                @endif
                                            </td>
                                        </tr>
                                    @endforeach
                                    </tbody>
                                </table>
                            </div>
                        </div>

                    </div>
                </section>

            </div>
        </div>
    </section>
@endsection

