<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Model\Division;

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
      $data['allData'] = Division::all();

        return view('backend.layouts.home',$data);
    }














    public function delete($id)
    {
      $user = Division::find($id);
      $user->delete();
      return redirect()->route('divisions.view')->with('success','Data deleted successfully!');
    }
}
