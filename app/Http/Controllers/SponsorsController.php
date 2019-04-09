<?php

namespace App\Http\Controllers;

use App\Sponsor;
use Illuminate\Http\Request;

class SponsorsController extends Controller
{
    public function index()
    {
        return view('sponsors.index');
    }

    public function indexByAPI()
    {
        return Sponsor::get();
    }
}
