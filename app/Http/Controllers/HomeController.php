<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Customer;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {

       $customers = auth()->user()->customers->toArray();
      
       return view('home', compact('customers'));
    }

    public function create(){


     return view('create');


    }

}
