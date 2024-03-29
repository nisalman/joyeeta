<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateDisbursementsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('disbursements', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('disburse_id');
            $table->string('commission_amount');
            $table->string('store_id');
            $table->string('is_disbursement')->default('0');
            $table->string('payment_amount');
            $table->string('payment_detail');
            $table->string('net_payable');
            $table->string('discount');
            $table->dateTime('from');
            $table->dateTime('to');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('disbursements');
    }
}
