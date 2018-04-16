<?php

use Illuminate\Database\Seeder;
use TCG\Voyager\Models\Role;
use TCG\Voyager\Models\User;

class UsersTableSeeder extends Seeder
{
    /**
     * Auto generated seed file.
     *
     * @return void
     */
    public function run()
    {
        if (User::count() == 0) {
            $role = Role::where('name', 'admin')->firstOrFail();

            User::create([
                'name'           => 'Yarno',
                'email'          => 'yarnobachmann@gmail.com',
                'password'       => bcrypt('Scoiatollo101'),
                'remember_token' => str_random(60),
                'role_id'        => $role->id,
                'avatar'         => 'users/April2018/ldNJx7QJhk8IxmsrWkh6.jpg',
            ]);
        }
    }
}
