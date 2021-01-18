<?php

use Illuminate\Database\Seeder;
use App\location;
class LocationSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Location::create([
            'name' => 'Dhanmondi',
            'prefix' => 'DM',
            'contact_person' => 'James Bond',
            'contact_number' => '01876252654',
            'address' => 'Dhanmondi, Dhaka',
            'admin_id' => '2',
            'operator_id' => '4',
        ]);
        Location::create([
            'name' => 'Mohammadpur',
            'prefix' => 'MD',
            'contact_person' => 'Sherlock Holmes',
            'contact_number' => '01977652654',
            'address' => 'Mohammadpur, Dhaka',
            'admin_id' => '2',
            'operator_id' => '4',
        ]);
    }
}
