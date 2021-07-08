<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\User;
use App\Purchase;
use App\Sale;
use App\Category;
use App\Customer;
use App\Employee;
use App\Supplier;
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
//     public function index()
//     {
//         /*$users = User::where('users', 'role')->first();
//         return view('home_page',compact('users'));
// */
//         $sales=Sale::get();
//         $purchase=Purchase::get();
//         $customers = Customer::get();
//         $suppliers = Supplier::get();
//         $users=User::leftjoin('ref_role','ref_role.id','=','users.role')
//                ->select('users.name','users.email','ref_role.name as role')
//                ->get(); 
//         return view('home_page',compact('customers','suppliers','users','purchase','sales'));
//     }
Public function index()
{
    return view('index');
}
Public function login()
{
    return view('login.index');
}
Public function forget()
{
    return view('login.forgot-password');
}
Public function register()
{
    return view('login.register');
}
Public function user()
{
    return view('user.index');
}
Public function profile()
{
    return view('admin.profile');
}
 Public function user_list()
{
    return view('admin.user-list');
}
}
