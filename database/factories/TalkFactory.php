<?php

use Faker\Generator as Faker;

/*
|--------------------------------------------------------------------------
| Model Factories
|--------------------------------------------------------------------------
|
| This directory should contain each of the model factory definitions for
| your application. Factories provide a convenient way to generate new
| model instances for testing / seeding your application's database.
|
*/

$factory->define(App\Talk::class, function (Faker $faker) {
    return [
        'title' => $faker->name,
        'slug' => $faker->slug,
        'summary' => $faker->text(255),
        'description' => $faker->text(1024),
//        'user_id' => App\User::find(1)->id,
        'thumbnail' => $faker->imageUrl(400, 400),
        'image' => $faker->imageUrl(1280, 720),
        'starts_at' => $faker->dateTime,
        'ends_at' => $faker->dateTime,
    ];
});
