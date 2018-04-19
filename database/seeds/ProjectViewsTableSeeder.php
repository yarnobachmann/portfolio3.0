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
                'section_1' => 'Kingscode is een programmeurs bedrijf dat websites bouwt voor iedereen van Wordpress naar maatwerk. Kingscode probeert samen met jou ideeën een mooi eindresultaat te maken. Kingscode kan ook pakketten leveren bij het maatwerk zoals het onderhoud pakket en het analytics pakket.',
                'section_2' => 'Collin Lambers en ik zijn deze v.o.f. begonnen om geweldige dingen te kunnen creëren! Ik ben van plan om in de toekomst ook fotografie bij het bedrijf toe te passen maar voor nu houden we het alleen bij websites bouwen! Bent u geïnteresseerd? Bezoek dan graag de website van Kingscode door de link hier onder.',
                'side_image' => 'project-views/April2018/PAA3zG7t4URFFcEKow1u.jpg',
                'right_image' => 'project-views/April2018/vYMwD75kZSxv08CcUXWh.png',
                'link_website' => 'http://www.kingscode.ga/',
                'project_id' => 1,
                'created_at' => '2018-04-16 18:38:59',
                'updated_at' => '2018-04-19 08:47:08',
                'project_name' => 'Kingscode',
            ),
        ));
        
        
    }
}