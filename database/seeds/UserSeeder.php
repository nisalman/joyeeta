<?php

use Illuminate\Database\Seeder;
use App\User;
class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        User::create([
            'name' => 'Super Admin',
            'mobile' => '017000000000',
            'email' => 'admin@admin.com',
            'address' => 'Dhaka',
            'user_role_id' => 1,
            'role_name' => 'Super Admin',
            'password' => bcrypt('123456'),
            'status' => 1,
        ]);
        User::create([
            'name' => 'User',
            'mobile' => '019000000000',
            'email' => 'user@ekshop.com',
            'address' => 'Dhaka',
            'user_role_id' => 0,
            'role_name' => 'User',
            'password' => bcrypt('123456'),
            'status' => 1,
        ]);
        User::create([
            'name' => 'Admin',
            'mobile' => '016000000000',
            'email' => 'ladmin@gmail.com',
            'address' => 'Dhaka',
            'user_role_id' => 2,
            'role_name' => 'Admin',
            'password' => bcrypt('123456'),
            'status' => 1,
        ]);
        User::create([
            'name' => 'Operator',
            'mobile' => '015000000000',
            'email' => 'operator@ekshop.com',
            'address' => 'Dhaka',
            'user_role_id' => 3,
            'role_name' => 'Operator',
            'password' => bcrypt('123456'),
            'status' => 1,
        ]);
    }
}
