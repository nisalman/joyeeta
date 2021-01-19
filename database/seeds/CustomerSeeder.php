<?php

use Illuminate\Database\Seeder;
use App\Customer;
class CustomerSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Customer::create([
            'name' => 'Ashraf Ali',
            'mobile' => '01710986265',
            'address' => 'Dhanmondi, Dhaka',
        ]);
        Customer::create([
            'name' => 'Mr. Rubel',
            'mobile' => '01811626223',
            'address' => 'Mohammadpur, Dhaka',
        ]);
        Customer::create([
            'name' => 'Salman',
            'mobile' => '01746182842',
            'address' => 'Mirpur, Dhaka',
        ]);
        Customer::create([
            'name' => 'Noman Ali',
            'mobile' => '01611986265',
            'address' => 'Mogbazar, Dhaka',
        ]);
    }
}
