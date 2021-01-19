<?php

use Illuminate\Database\Seeder;
use App\Store;
class StoreSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Store::create([
            'name' => 'Adil Store',
            'number' => '2345676',
            'contact_name' => 'Md. Adil',
            'contact_number' => '01918762435',
            'location_id' => '1',
            'balance' => '2000',
            'payment_method' => '1',
            'bank_mfs_name' => 'bKash',
            'account_number' => '01918762435',
            'payment_details' => 'Pay through bKash Merchant account',
        ]);
        Store::create([
            'name' => 'Tom Creation',
            'number' => '98456343',
            'contact_name' => 'Md. Tom',
            'contact_number' => '01414762499',
            'location_id' => '1',
            'balance' => '9900',
            'payment_method' => '2',
            'bank_mfs_name' => 'Bank',
            'account_number' => '255.151.222.2332',
            'payment_details' => 'DBBL, Panthapath Branch',
        ]);
        Store::create([
            'name' => 'ABC Mart',
            'number' => '9826272',
            'contact_name' => 'Jalil Uddin',
            'contact_number' => '01618767685',
            'location_id' => '2',
            'balance' => '2000',
            'payment_method' => '2',
            'bank_mfs_name' => 'Bank',
            'account_number' => 'SMSA1232',
            'payment_details' => 'Islami Bank, Panthapath Branch',
        ]);
        Store::create([
            'name' => 'Taher Store',
            'number' => '4532424',
            'contact_name' => 'Taher Ali',
            'contact_number' => '01918762435',
            'location_id' => '2',
            'balance' => '12000',
            'payment_method' => '1',
            'bank_mfs_name' => 'bKash',
            'account_number' => '01518762435',
            'payment_details' => 'Pay through bKash Merchant account',
        ]);
    }
}
