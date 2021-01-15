@extends('layouts.app')

@section('content')
    <section class="wrapper">
        <div class="row">
            <div class="col-lg-6">
                <section class="card">
                    <header class="card-header">
                        Settings
                    </header>
                    <div class="card-body">
                        {!! Form::open(['route' => ['setting.update', $settings->id]]) !!}
                        {{ method_field('PUT') }}
                            <div class="form-group">
                                <label for="exampleInputEmail1">Vat</label>
                                <input type="number" class="form-control" id="vat" name="vat" value="{{$settings->vat}}">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword1">Tax</label>
                                <input type="number" name="tax" id="tax" class="form-control" value="{{$settings->tax}}">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword1">Commission</label>
                                <input type="number" name="commission" id="commission" class="form-control" value="{{$settings->commission}}">
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
                            <div class="row p-details">
                                <div class="bio-row">
                                    <p><span class="bold">Vat </span>: {{$settings->vat}}%</p>
                                </div>
                                <div class="bio-row"></div>
                                <div class="bio-row">
                                    <p><span class="bold">Tax </span>: {{$settings->tax}}%</p>
                                </div>
                                <div class="bio-row"></div>
                                <div class="bio-row">
                                    <p><span class="bold">Commission </span>: {{$settings->commission}}%</p>
                                </div>

                            </div>
                        </div>

                    </div>
                </section>

            </div>
        </div>
    </section>
@endsection

