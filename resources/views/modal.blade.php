<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle"
     aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalCenterTitle"></h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <section class="card">
                    {{--                    @include('transaction.search')--}}
                    <div class="card-body">
                        <div class="adv-table">
                            <table class="display table table-bordered table-striped">
                                <tbody>
                                <tr class="gradeX" width="30%">
                                    <td>Store Location</td>
                                    <td id="storeLocation">loading...</td>
                                </tr>
                                <tr class="gradeX" width="30%">
                                    <td>Store Name</td>
                                    <td id="storeName">loading...</td>
                                </tr>
                                <tr class="gradeX" width="30%">
                                    <td>Customer Name</td>
                                    <td id="customerName">loading...</td>
                                </tr>
                                <tr class="gradeX" width="30%">
                                    <td>Customer Number</td>
                                    <td id="customerNumber">loading...</td>
                                </tr>
                                <tr class="gradeX" width="30%">
                                    <td>Address</td>
                                    <td id="address">loading...</td>
                                </tr>
                                <tr class="gradeX" width="30%">
                                    <td>Paid Amount</td>
                                    <td id="paidAmount">loading...</td>
                                </tr>
                                <tr class="gradeX" width="30%">
                                    <td>card Number</td>
                                    <td id="cardNumber">loading...</td>
                                </tr>
                                <tr class="gradeX" width="30%">
                                    <td>Card Type</td>
                                    <td id="cardType">loading...</td>
                                </tr>
                                <tr class="gradeX" width="30%">
                                    <td>Card Charge</td>
                                    <td id="cardCharge">loading...</td>
                                </tr>
                                <tr class="gradeX" width="30%">
                                    <td>APPR Code</td>
                                    <td id="apprCode">loading...</td>
                                </tr>
                                <tr class="gradeX" width="30%">
                                    <td>Date and Time</td>
                                    <td id="td">loading...</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </section>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>
