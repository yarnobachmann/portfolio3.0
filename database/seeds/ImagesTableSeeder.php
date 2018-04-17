<?php

use Illuminate\Database\Seeder;

class ImagesTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {


        \DB::table('images')->delete();

        \DB::table('images')->insert(array (
            0 =>
            array (
                'id' => 1,
                'title' => 'Sofie portret foto',
                'image' => 'images/April2018/TscaPcgJ7wsvJX7Gf5rR.jpeg',
                'created_at' => '2018-04-16 12:27:06',
                'updated_at' => '2018-04-16 12:27:06',
            ),
            1 =>
            array (
                'id' => 2,
                'title' => 'Muurbegroeiing boven oud houten bankje',
                'image' => 'images/April2018/aHxtiT1MT4X7UCtPu9xe.jpg',
                'created_at' => '2018-04-16 13:01:11',
                'updated_at' => '2018-04-16 13:04:29',
            ),
            2 =>
            array (
                'id' => 3,
                'title' => 'Sofie met zonnebril effect',
                'image' => 'images/April2018/d9kGvn8wnGPa4ayzMdRX.jpg',
                'created_at' => '2018-04-16 13:09:44',
                'updated_at' => '2018-04-16 13:09:44',
            ),
        ));


    }
}
