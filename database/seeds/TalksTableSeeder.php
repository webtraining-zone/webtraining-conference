<?php

use Illuminate\Database\Seeder;

class TalksTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {

        factory(App\Talk::class, 10)->make()->each(function ($talk) {
            $user = factory(App\User::class)->create();
            $room = factory(App\Room::class)->create();
            $talk->speaker()->associate($user);
            $talk->room()->associate($room);

            $talk->save();
        });
    }
}
