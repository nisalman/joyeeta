<?php

function userType()
{
    return  \Illuminate\Support\Facades\Auth::user()->user_role_id;
}
function userName()
{
    return \Illuminate\Support\Facades\Auth::user()->name;
}
