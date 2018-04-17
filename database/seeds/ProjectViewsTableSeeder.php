<?php

use Illuminate\Database\Seeder;

class ProjectViewsTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {


        \DB::table('project_views')->delete();

        \DB::table('project_views')->insert(array (
            0 =>
            array (
                'id' => 1,
                'section_1' => 'lorem Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                'section_2' => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                'side_image' => 'project-views/April2018/a53zcLY0cRv7N8tgeKsw.jpg',
                'right_image' => 'project-views/April2018/BSIs1I6OeTUjd0dPauDH.jpg',
                'link_website' => 'http://www.kingscode.ga/',
                'project_id' => 1,
                'created_at' => '2018-04-16 18:38:59',
                'updated_at' => '2018-04-16 19:17:26',
                'project_name' => 'Kingscode',
            ),
        ));


    }
}
