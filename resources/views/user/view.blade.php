@extends('layouts.app')

@section('content')
    <section class="wrapper">
        <div class="row">
            <div class="col-lg-12">
                <section class="card">
                    <header class="card-header">
                        User List
                    </header>
                    @include('layouts.partial.validationMessage')
                    <div class="card-body">
                        <div class="adv-table">
                            <table class="display table table-bordered table-striped" id="dynamic-table">
                                <thead>
                                <tr>
                                    <th>SL No.</th>
                                    <th>Name</th>
                                    <th>Mobile</th>
                                    <th>Email</th>
                                    <th class="hidden-phone">User Role</th>
                                    <th class="hidden-phone">Status</th>
                                    <th>Action</th>
                                </tr>
                                </thead>
                                <tbody>
                                @foreach($users as $key=>$user)
                                <tr class="gradeX">
                                    <td>{{$key+1}}</td>
                                    <td>{{$user->name}}</td>
                                    <td>{{$user->mobile}}</td>
                                    <td>{{$user->email}}</td>
                                    <td class="center hidden-phone">{{$user->role_name}}</td>
                                    <td class="center hidden-phone">
                                        @if($user->status==1)
                                            <span class="badge badge-success label-mini">Active</span>
                                        @else
                                            <span class="badge badge-danger label-mini">Inactive</span>
                                            @endif
                                    </td>
                                    <td>
{{--
                                        <button class="btn btn-success btn-sm" type="button" data-toggle="modal" data-target="#exampleModalCenter"><i class="fa fa-check"></i></button>
--}}
                                        <a href="{{route('user.edit', $user->id)}}"><button class="btn btn-primary btn-sm"><i class="fa fa-pencil"></i></button></a>
                                        @if($user->status==1)
                                            <a href="{{route('user.deactivated', $user->id)}}"><button class="btn btn-danger btn-sm"><i class="fa fa-ban "></i></button></a>
                                        @else
                                            <a href="{{route('user.reactivated', $user->id)}}"><button class="btn btn-success btn-sm"><i class="fa fa-check "></i></button></a>

                                        @endif
                                    </td>
                                </tr>
                                @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </section>
                @include('modal')

@endsection

