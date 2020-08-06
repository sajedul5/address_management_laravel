<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Model\Division;
use App\Http\Requests\DivisionRequest;
class DivisionController extends Controller
{
  public function view()
  {
    $data['allData'] = Division::all();
    return view('backend.division.view-division', $data);
  }

  public function add()
  {
    return view('backend.division.add-division');
  }

  public function store(Request $request)
  {
    $this->validate($request,[
      'name' => 'required|unique:divisions,name',
    ]);

    $data = new Division();
    $data->name = $request->name;
    $data->save();
    return redirect()->route('todo.home.task.view')->with('success','Data added successfully');
  }

  public function edit($id)
  {
    $data['editData'] = Division::find($id);
    return view('backend.division.add-division',$data);
  }

  public function update(Request $request, $id)
  {
    $data = Division::find($id);
    $data->name = $request->name;
    $data->save();
    return redirect()->route('todo.home.task.view')->with('success','Data updated successfully!');

  }

  public function delete($id)
  {
    $user = Division::find($id);
    $user->delete();
    return redirect()->route('todo.home.task.view')->with('success','Data deleted successfully!');
  }
}
