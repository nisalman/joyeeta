<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class DisbursementRemoveCommentImage extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('disbursements', function (Blueprint $table) {
            $table->dropColumn('image');
            $table->dropColumn('comment');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('disbursement', function (Blueprint $table) {
            //
        });
    }
}
