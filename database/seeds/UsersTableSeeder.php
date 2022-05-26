<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('users')->insert([
            'role_id' => '1',
            'name' => 'eTrans-Admin',
            'username' => 'admin',
            'email' => 'admin@gmail.com',
            'password' => bcrypt('admin'),            
        ]);

        DB::table('users')->insert([
            'role_id' => '2',
            'name' => 'eTrans-User',
            'username' => 'user',
            'email' => 'user@gmail.com',
            'password' => bcrypt('user'),            
        ]);
    }
}
