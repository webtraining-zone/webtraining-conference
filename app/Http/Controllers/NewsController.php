<?php

namespace App\Http\Controllers;

use App\Http\Resources\NewsCollection;
use App\Http\Resources\NewsResource;
use App\News;
use Illuminate\Http\Request;

class NewsController extends Controller
{
    public function index()
    {
        return new NewsCollection(News::all());
    }

    public function show(News $news)
    {
        return new NewsResource($news);
    }
}