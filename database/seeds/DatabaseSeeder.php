<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
      $this->call(VoyagerDatabaseSeeder::class);
      $this->call(UsersTableSeeder::class);
        $this->call(ImagesTableSeeder::class);
        $this->call(AboutsTableSeeder::class);
        $this->call(ContactsTableSeeder::class);
        $this->call(ProjectsTableSeeder::class);
        $this->call(ProjectViewsTableSeeder::class);
    }
}
