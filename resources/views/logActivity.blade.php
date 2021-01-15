@extends('layouts.app')

@section('content')
    <section class="wrapper">

        <div class="row">
            <div class="col-lg-12">
                <section class="card">
                    <header class="card-header">
                        Advanced Table
                    </header>

                    <div class="card-body">
                        <div class="adv-table">
                            <table class="display table table-bordered table-striped" id="dynamic-table">
                                <thead>
                                <tr>
                                    <th>No</th>
                                    <th>Subject</th>
                                    <th>URL</th>
                                    <th>Ip</th>
                                    <th width="300px">User Agent</th>
                                    <th>User Id</th>
                                    <th>Date Time</th>
                                </tr>
                                </thead>
                                <tbody>
                                @if($logs->count())
                                    @foreach($logs as $key => $log)
                                        <tr>
                                            <td>{{ ++$key }}</td>
                                            <td>{{ $log->subject }}</td>
                                            <td class="text-success">{{ $log->url }}</td>

                                            <td class="text-warning">{{ $log->ip }}</td>
                                            <td class="text-danger">{{ $log->agent }}</td>
                                            <td>{{ $log->user_name }}</td>
                                            <td>
                                                {{ Carbon\Carbon::parse($log->created_at)->format('d/m/Y h:m:s') }}

                                            </td>
                                        </tr>
                                    @endforeach
                                @endif
                                </tbody>
                            </table>
                        </div>
                    </div>
                </section>
            </div>
        </div>
    </section>
@endsection

