<?php

namespace App\Http\Controllers\API\ReferAndEarn;

use App\Http\Controllers\Controller;
use App\Models\ReferPoints;
use Illuminate\Http\Request;

class ReferAndEarnController extends Controller
{
    public function viewPoints()
    {
        $points = ReferPoints::all();
        return view('refer-and-earn.points.index', compact('points'));
    }
}
