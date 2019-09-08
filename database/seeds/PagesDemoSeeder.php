<?php

use Illuminate\Database\Seeder;

class PagesDemoSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker\Factory::create();

        $limit = 3;

        for ($i = 0; $i < $limit; $i++) {
            DB::table('pages')->insert([
              'slug' => $faker->slug,
              'title' => $faker->name,
              'content' => $faker->text,
            ]);
        }
    }
}
