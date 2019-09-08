<?php

use Illuminate\Database\Seeder;

class ProductsDemoSeeder extends Seeder
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
            DB::table('products')->insert([
              'slug' => $faker->slug,
              'title' => $faker->title . ' - Перфоратор Bosh',
              'excerpt' => $faker->company,
              'content' => $faker->text,
              'image' => 'catalog-item-bfg-9000.jpg',
              'category_id' => 1,
              'is_active' => 1,
              'is_recommended' => 1
            ]);
        }
    }
}
