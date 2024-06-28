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
    public function editPoints($id)
    {
        $point = ReferPoints::find($id);
        return view('refer-and-earn.points.edit', compact('point'));
    }

    public function updatePoints(Request $request)
    {
        $id = $request->pointId;
        $point = ReferPoints::find($id);
        $point->title = $request->title;
        $point->points = $request->points;
        $point->details = $request->details;
        $point->save();
        return redirect()->route('refer.point.index');
    }
}
