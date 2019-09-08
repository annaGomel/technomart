<?php

use Illuminate\Database\Seeder;

class ManufacturersDemoSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker\Factory::create();

        $limit = 10;

        for ($i = 0; $i < $limit; $i++) {
            DB::table('manufacturers')->insert([
              'title' => $faker->title,
              'image' => 'brands-logo-1.jpg'
            ]);
        }
    }
}
