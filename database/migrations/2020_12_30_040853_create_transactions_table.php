<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTransactionsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('transactions', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('transactionID');
            $table->string('store_id');
            $table->string('location_id');
            $table->string('customer_id');
            $table->string('net_amount');
            $table->string('discount');
            $table->string('coupon');
            $table->string('final_payable');
            $table->string('cardNo');
            $table->integer('cardType');
            $table->string('apprCode');
            $table->dateTime('dateTime');
            $table->string('is_disburse');
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
        Schema::dropIfExists('transactions');
    }
}
