<?php

namespace App\Http\Controllers;

use App\Talk;
use Illuminate\Http\Request;

class ProgramController extends Controller
{
    public function index()
    {
        $talks = Talk::all();
        return view('program.index')->with('talks', $talks);
    }

    public function showTalk(Talk $talk)
    {
        return $talk;
    }
}
