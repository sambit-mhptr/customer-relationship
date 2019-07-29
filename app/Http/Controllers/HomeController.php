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
       
        $customers =  auth()->user()->customers->unique()->toArray();
       // dd($data[0]['customers']);
      
       return view('home', compact('customers'));
    }

    public function create(){


     return view('create');


    }

    public function store(Request $request, Customer $customer)
    {
     if($request->has('activity_description')){
       if(count($request->activity_description) == 0) {
        $countDesc = false;
       unset($request->all()['activity_description']);

       } 
    }
    if($request->has('activity_type')){
       if(count($request->activity_type) == 0) {
           $countTyp = false;
        unset($request->all()['activity_type']);
 
        } 
    }
      $data =  $request->validate([
            'name' => 'required|min:3',
            'email' =>  'required|string|email|max:255|unique:customers',
            'phone' => 'required|numeric|min:10',
            'address' => 'required|string',
            'status' => 'sometimes|required|boolean',
            'activity_type.*' => $countDesc ?? "1" == false?'required|string' : 'sometimes|required|string',
            'activity_description.*' => $countTyp ?? "1" == false?'required|string' : 'sometimes|required|string'

        ]);

    $cus = Customer::create([
           'name' => $data['name'],
           'email' => $data['email'],
           'phone' => $data['phone'],
           'address' => $data['address'],
           'status' => ($data['status'] == 1) ? true: false,
       ]);

       if($request->has('activity_type')){
        if(count($request->activity_type)) {

            for ($i=0; $i < count($request->activity_type); $i++) { 
                
                auth()->user()->customers()->attach($cus->id, 
                ['activity_type' => $data['activity_type'][$i],
                 'description' =>  $data['activity_description'][$i] 
                ]);

            }


        }else{
            auth()->user()->customers()->attach($cus->id);
        }}else{
            auth()->user()->customers()->attach($cus->id);
        }
      

        return redirect('/home')->with([ 'status' => 'customer created successfully' ]);
  
    }

    public function destroy(Customer $customer){

         $customer->delete();

         return redirect('/home')->with('status','customer deleted successfully');
    }

    public function edit(Customer $customer)
    {
    $u = User::where('id', auth()->id())->with('customers')->get()->toArray();

    
        $customer =  collect($u[0]['customers'])->where('id',$customer->id)->values()->toArray()[0];
        return view('edit', compact('customer'));
        
    }  

    public function update(Request $request , Customer $customer)
    {
        $data =  $request->validate([
            'name' => 'required|min:3',
            'email' => $customer->email != $request->email? 'required|string|email|max:255|unique:customers' : 'required|string|email|max:255',
            'phone' => 'required|numeric|min:10',
            'address' => 'required|string',
            'status' => 'boolean',

        ]);

         $customer->update($data);
        

        return redirect('/home')->with('status', 'customer updated successfully');
        
    }  

    public function show(Customer $customer){

        $activities = \DB::table('customer_user')
        ->join('customers',  'customer_user.customer_id', '=', 'customers.id')
        ->select('customer_user.*', 'customers.name', 'customers.email',
        'customers.phone', 'customers.address', 'customers.status')
        ->where('user_id', auth()->id())
        ->where('customer_id', $customer->id)
        ->orderBy('customer_user.created_at')->get()->toArray();
        
        return view('show',compact('activities'));
    }




    public function updateActivity(Request $request, $id)
    {
        \DB::table('customer_user')->where('id', $id )->update([
            'activity_type' => $request->activity_type,
            'description' => $request->description
        ]);

        return back()->with('status','updated ssuccessfully');
    }  

    public function deleteActivity(Request $request, $id)
    {
      \DB::table('customer_user')->where('id', $id )->delete();

      return back()->with('status','deleted ssuccessfully');
        
    }  
}
