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
                                    <th>Store Name</th>
                                    <th>Payment Amount</th>
                                    <th>Payment Detail</th>
                                    <th>Net Payable</th>
                                    <th>Discount</th>
                                    <th class="hidden-phone">Create Date</th>
                                    <th class="hidden-phone">Status</th>
                                    <th>Action</th>
                                </tr>
                                </thead>
                                <tbody>
                                @foreach($disbursements as $disbursement)

                                    <tr class="gradeX">
                                        <td>{{$disbursement->store->name}}</td>
                                        <td>{{$disbursement->payment_amount}}</td>
                                        <td>{{$disbursement->payment_detail}}</td>
                                        <td>{{$disbursement->net_payable}}</td>
                                        <td>{{$disbursement->discount}}</td>
                                        <td class="center hidden-phone">{{$disbursement->created_at}}</td>
                                        <td class="center hidden-phone">
                                            @if($disbursement->is_disbursement==1)
                                                <span class="badge badge-success label-mini">Yes</span>
                                            @else
                                                <span class="badge badge-danger label-mini">No</span>
                                            @endif
                                        </td>
                                        <td>
                                            <button class="btn btn-success btn-sm" type="button" data-toggle="modal" data-target="#exampleModalCenter"><i class="fa fa-check"></i></button>
                                            <button class="btn btn-primary btn-sm"><i class="fa fa-pencil"></i></button>
                                            <button class="btn btn-danger btn-sm"><i class="fa fa-trash-o "></i></button>
                                        </td>
                                    </tr>
                                @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </section>
                <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
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

