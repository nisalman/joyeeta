@extends('layouts.app')

@section('content')
    <section class="wrapper">
        <div class="row">
            <div class="col-lg-12">
                <section class="card">
                    <header class="card-header">
                        All Disbursements
                    </header>
                    @include('layouts.partial.validationMessage')

                    <div class="card-body">
                        <div class="adv-table">
                            <table class="display table table-bordered table-striped" id="dynamic-table">
                                <thead>
                                <tr>
                                    <th>Disburse ID</th>
                                    <th>Store Name</th>
                                    <th>Paid Amount</th>
                                    <th>Commission</th>
                                    <th>images</th>
                                    <th>Comment</th>
                                    <th>Date</th>

                                    {{--                                    <th class="hidden-phone">Disbursement</th>--}}
                                    {{--@can('isSuperAdmin')
                                    <th>Action</th>
                                    @endcan--}}
                                </tr>
                                </thead>
                                <tbody>
                                @foreach($disbursements as $disbursement)

                                    <tr class="gradeX">
                                        <td><a href="{{route('disbursement.batchDetail',$disbursement->disburse_id)}}"
                                               style="color: red"> {{$disbursement->disburse_id}}</a></td>
                                        {{--<td>{{$disbursement->disburse_id}}</td>--}}
                                        <td>{{$disbursement->store->name}}</td>
                                        <td>{{$disbursement->net_payable}}</td>
                                        <td>{{$disbursement->commission_amount}}</td>
                                        <td>
                                            @if($disbursement->image==null)
                                                <img src="{{asset('uploads/no_image.png')}}" width="40"
                                                     height="40">
                                            @else
                                                <img src="{{asset('uploads/'.$disbursement->image)}}" width="40"
                                                     height="40">
                                            @endif
                                            </td>
                                        <td>{{$disbursement->comment}}</td>
                                        <td class="center hidden-phone">
                                            {{ Carbon\Carbon::parse($disbursement->created_at)->format('d/m/Y') }}
                                        </td>
                                        {{--<td class="center hidden-phone">
                                            @if($disbursement->is_disbursement==1)
                                                <span class="badge badge-success label-mini">Yes</span>
                                            @else
                                                <span class="badge badge-danger label-mini">No</span>
                                            @endif
                                        </td>--}}
                                        {{--@can('isSuperAdmin')
                                        <td>
                                            <button class="btn btn-success btn-sm" type="button" data-toggle="modal" data-target="#exampleModalCenter"><i class="fa fa-check"></i></button>
                                            <a href="{{route('disbursement.edit', $disbursement->id)}}"><button class="btn btn-primary btn-sm"><i class="fa fa-pencil"></i></button></a>




                                            <form id="delete-form-{{ $disbursement->id }}" action="{{ route('disbursement.destroy',$disbursement->id) }}" method="POST">
                                                @csrf
                                                @method('DELETE')
                                            </form>
                                            <button type="button" class="btn btn-danger btn-sm"  onclick="if(confirm('Are you sure? You want to delete this?')){
                                                event.preventDefault();
                                                document.getElementById('delete-form-{{ $disbursement->id }}').submit();
                                                }else {
                                                event.preventDefault();
                                                }"><i class="fa fa-trash-o "></i></button>

                                        </td>
                                        @endcan--}}
                                    </tr>
                                @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </section>
                <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog"
                     aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalCenterTitle">Modal title</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                ...
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                <button type="button" class="btn btn-primary">Save changes</button>
                            </div>
                        </div>
                    </div>
                </div>
@endsection

