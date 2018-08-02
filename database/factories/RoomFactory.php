<?php

use Faker\Generator as Faker;

$factory->define(App\Room::class, function (Faker $faker) {
    return [
        'name' => 'Room ' . $faker->name,
        'slug' => $faker->slug,
        'description' => $faker->text(255)
    ];
});
