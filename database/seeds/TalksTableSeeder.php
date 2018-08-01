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
        factory(App\User::class, 2)->create()->each(function ($user) {
            $user->talks()->save(factory(App\Talk::class)->make());
        });
    }
}
