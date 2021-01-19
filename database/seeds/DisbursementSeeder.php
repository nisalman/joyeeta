<?php

use Illuminate\Database\Seeder;
use App\Disbursement;
class DisbursementSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Disbursement::create([
            'disburse_id' => 'DM-725242',
            'commission_amount' => '66',
            'store_id' => '1',
            'is_disbursement' => '0',
            'payment_amount' => '1000',
            'payment_detail' => 'Paid through bKash',
            'net_payable' => '1000',
            'discount' => '100',
            'from' => '2020-07-16 09:25:20',
            'to' => '2021-01-06 09:25:20',
        ]);
        Disbursement::create([
            'disburse_id' => 'DM-935522',
            'commission_amount' => '199',
            'store_id' => '2',
            'is_disbursement' => '1',
            'payment_amount' => '9822',
            'payment_detail' => 'Paid through bKash',
            'net_payable' => '1000',
            'discount' => '100',
            'from' => '2020-12-16 09:25:20',
            'to' => '2021-01-06 09:25:20',
        ]);
    }
}
