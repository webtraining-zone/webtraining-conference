<?php

namespace App\Http\Controllers;

use App\Talk;
use Carbon\Carbon;
use Illuminate\Http\Request;

class ProgramController extends Controller
{
    public function index()
    {
//        Carbon::setLocale('es_ES');
//        setlocale(LC_TIME, "es_ES.UTF-8");
        $talks = Talk::all();
//        $talks = Talk::paginate(5);

        $groups = $talks->map(function ($talk, $key) {
            $talk['day'] = Carbon::parse($talk->starts_at)->format('l');
            return $talk;
        })->groupBy('day');

        return view('program.index')->with('groups', $groups);
    }

    public function showTalk(Talk $talk)
    {
        return view('talks.show')->with('talk', $talk);
    }
}
