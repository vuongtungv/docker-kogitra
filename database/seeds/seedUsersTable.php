<?php

use Illuminate\Database\Seeder;

class seedUsersTable extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        /**
         * user: admin
         * pass: admin!@#
         *
         * INSERT INTO `users` VALUES (1, 'admin', '$2b$10$Q7Q6tRpGVWLO4kwSeHGtGOsd3qL12Gu8cC2nyZ9o6gAHicyfZo4Am',
         *                             'Vương Sỹ Tùng', 'vuongtungv@gmail.com', 1, 1, NULL, NULL, '2021-08-04 16:34:32', '2021-08-04 16:34:34');
        **/


        DB::table('users')->insert([
            'username' => 'admin',
            'password' => Hash::make('Admin@321'),
            'full_name' => 'Vương Sỹ Tùng',
            'email' => 'vuongtungv@gmail.com',
            'status' => 1,
            'level' => 1,
            'email_verified_at' => NULL,
            'remember_token' => NULL,
        ]);
    }
}
