<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class WelcomeController extends Controller
{
    public function index()
    {
        return view('welcome');
    }

    public function getUsersWithRawQuery()
    {
        //
        // Raw Queries
        //

        // This returns an array of StdClass
        $users = DB::select('select * from users where 1');

        // Custom connection + named bindings
        // Parameter binding provides protection against SQL injection.
        $oneNews = DB::connection('mysql_news')->select('select * from news where id = :id and slug = :slug',
            ['id' => 1, 'slug' => 'news-1']);

        //
        // ./Raw Queries
        //

        //
        // Query Builder
        //

        // This returns a Laravel Collection
        $users = DB::table('users')->get();

        $news = DB::connection('mysql_news')
            ->table('news')
            ->where('id', '=', 1)
            ->orWhere('id', '=', 2)
//            ->where('slug', '=','news-1')
            ->get();

        // Retrieve all talks getting only the talk's title and user's name
        $talksByUser = DB::table('talks')
                ->leftJoin('users', 'users.id', '=', 'talks.user_id')
                ->select('talks.title', 'users.name')
                ->get();

        // First returns an array not a collection
//        $firstUser = $users->first();
//        json_encode($firstUser);
        // response()->json($firstUser);

        return $talksByUser;

    }
}
