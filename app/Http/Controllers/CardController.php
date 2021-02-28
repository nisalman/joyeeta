<?php

namespace App\Http\Controllers;

use App\Card;
use App\Setting;
use Illuminate\Http\Request;

class CardController extends Controller
{
    public function index()
    {
        $cards= Card::all();
        return view('setting.card_setting', compact('cards'));
    }
    public function updateData(Request $request)
    {
       // return $request;
          $charge= $request->charge;

        foreach ($charge as $key=>$p)
        {
            $card= Card::find($key);
            $card->charge = $p;
            $card->paid_person = $request->costCarry;
            $card->save();
        }

        return redirect()->back()->with('successMsg','Card Settings Successfully Updated');
    }
}
