<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Customer;
use App\User;

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
    public function index(User $user)
    {
        $data =  User::where('id', auth()->id())->with('customers')->get()->toArray();
        //dd($data[0]['customers']);
        $customers = $data[0]['customers'];
      
       return view('home', compact('customers'));
    }

    public function create(){


     return view('create');


    }

    public function store(Request $request, Customer $customer)
    {
   // dd($request->all());
        if(trim($request->activity_type)==""){

            unset($request['activity_type']);
        }
        if(trim($request->activity_description)==""){

            unset($request['activity_description']);
        }

      $data =  $request->validate([
            'name' => 'required|min:3',
            'email' =>  'required|string|email|max:255|unique:customers',
            'phone' => 'required|numeric|min:10',
            'address' => 'required|string',
            'status' => 'boolean',
            'activity_type' => 'sometimes|required|string',
            'activity_description' => 'sometimes|required|string'

        ]);
//dd($data);
    $cus= Customer::create([
           'name' => $data['name'],
           'email' => $data['email'],
           'phone' => $data['phone'],
           'address' => $data['address'],
           'status' => ($data['status'] == 1)?true: false,
       ]);


       if(trim($data['activity_type'])!="" || trim($data['activity_description'])!=""){

          auth()->user()->customers()->attach($cus->id, 
        ['activity_type' => $data['activity_type'] ,
         'description' =>  $data['activity_description']
        ]);
       
        }

        return redirect('/home')->with('status', 'customer created successfully');
  
    }
}
