<?php

function userType()
{
    return  \Illuminate\Support\Facades\Auth::user()->user_role_id;
}
function userName()
{
    return \Illuminate\Support\Facades\Auth::user()->name;
}
function userId()
{
    return \Illuminate\Support\Facades\Auth::user()->id;
}
function userLocation()
{
    return \App\User::find(\Illuminate\Support\Facades\Auth::user()->id);

}
function getUserLocation()
{
    return \App\location::where('admin_id', Auth::user()->id)->first();

}
