<?php

use Illuminate\Database\Seeder;
use App\Transaction;

class TransactionSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Transaction::create([
            'transactionID' => 'DM-925274',
            'store_id' => '1',
            'location_id' => '1',
            'customer_id' => '1',
            'net_amount' => '10000',
            'discount' => '2000',
            'coupon' => 'CRS654',
            'final_payable' => '8000',
            'cardNo' => '918762435',
            'cardType'=>'1',
            'apprCode' => '987554',
            'dateTime' => '2011-09-03 07:22:00',
            'is_disburse' => '0',
        ]);
        Transaction::create([
            'transactionID' => 'DM-990521',
            'store_id' => '2',
            'location_id' => '1',
            'customer_id' => '2',
            'net_amount' => '8000',
            'discount' => '1000',
            'coupon' => 'CRS654',
            'final_payable' => '7000',
            'cardNo' => '918762435',
            'cardType'=>'2',
            'apprCode' => '987554',
            'dateTime' => '2019-12-03 07:22:00',
            'is_disburse' => '0',
        ]);
        Transaction::create([
            'transactionID' => 'DM-445140',
            'store_id' => '1',
            'location_id' => '2',
            'customer_id' => '3',
            'net_amount' => '9999',
            'discount' => '999',
            'coupon' => 'CRS654',
            'final_payable' => '9000',
            'cardNo' => '918762435',
            'cardType'=>'3',
            'apprCode' => '725254',
            'dateTime' => '2021-01-02 07:22:00',
            'is_disburse' => '1',
        ]);
        Transaction::create([
            'transactionID' => 'DM-652857',
            'store_id' => '2',
            'location_id' => '2',
            'customer_id' => '4',
            'net_amount' => '5400',
            'discount' => '400',
            'coupon' => 'CRS64',
            'final_payable' => '5000',
            'cardNo' => '918762435',
            'cardType'=>'4',
            'apprCode' => '987554',
            'dateTime' => '2021-01-19 07:22:00',
            'is_disburse' => '0',
        ]);
    }
}
