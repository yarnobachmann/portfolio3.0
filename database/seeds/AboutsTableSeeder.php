<?php

use Illuminate\Database\Seeder;

class AboutsTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('abouts')->delete();
        
        \DB::table('abouts')->insert(array (
            0 => 
            array (
                'id' => 1,
                'section_1' => 'Mijn naam is Yarno Bachmann ik ben 19 jaar en heb een passie voor fotografie en webdesign.',
                'section_2' => 'Ik programmeer maatwerk websites en maak fotos.',
                'created_at' => '2018-04-16 13:30:26',
                'updated_at' => '2018-04-19 07:14:30',
            ),
        ));
        
        
    }
}