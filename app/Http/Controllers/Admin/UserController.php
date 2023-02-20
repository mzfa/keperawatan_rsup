<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Crypt;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Redirect;

class UserController extends Controller
{
    public function index()
    {
        $data = DB::table('users')->leftJoin('hakakses', 'users.hakakses_id', '=', 'hakakses.hakakses_id')
        ->select([
            'users.*',
            'hakakses.nama_hakakses',
        ])->whereNull('users.deleted_at')->get();
        return view('user', compact('data'));
    }

    public function sync()
    {
        $list_user = DB::connection('PHIS-V2')
            ->table('users')
            ->select([
                'user_id',
                'user_name',
                'user_password',
                'nama_pegawai',
                'pegawai_id',
            ])
            ->orderBy('user_id')
            ->get();
    
        $userid = Auth::user()->id;
        $datanya[] = [
            'id' => 0,
            'created_by' => $userid,
            'created_at' => now(),
            'username' => 'mzfa',
            'password' => 'mzfa',
            'name' => 'mzfa',
            'pegawai_id' => 0,
        ];
        foreach ($list_user as $item) {
            $datanya[] = [
                'id' => $item->user_id,
                'created_by' => $userid,
                'created_at' => now(),
                'username' => $item->user_name,
                'password' => $item->user_password,
                'name' => $item->nama_pegawai,
                'pegawai_id' => $item->pegawai_id,
            ];
        }
        // dd($datanya);

        DB::table('users')->truncate();
        DB::table('users')->insert($datanya);
        return Redirect::back()->with('message', ['success', 'Data berhasil disimpan']);

        // return redirect()->back()->with('status', ['success', 'Data berhasil disimpan']);
    }

    public function edit($id)
    {
        // $id = Crypt::decrypt($id);
        // dd($data);
        $text = "Data tidak ditemukan";
        $hakakses = DB::table('hakakses')->get();
        if($data = DB::table('users')->where(['hakakses_id' => $id])->get()){
            // dd($data);
            $text = '<div class="mb-3 row">'.
                    '<input type="hidden" name="id" value="'.Crypt::encrypt($id).'">'.
                    '<label for="staticEmail" class="col-sm-12 col-form-label">Hak Akses</label>'.
                    '<div class="col-sm-12">'.
                    '<select class="form-control" name="hakakses_id">'. 
                    '<option></option>';
                    foreach ($hakakses as $value) {
                        $text .= '<option value="'.$value->hakakses_id.'">'.$value->nama_hakakses.'</option>';
                    }
                    $text .= '</select>'.
                    '</div>'.
                '</div>';
        }
        return $text;
        // return view('admin.hakakses.edit');
    }
    public function update(Request $request){
        $request->validate([
            'hakakses_id' => ['required', 'string'],
        ]);
        $data = [
            'updated_by' => Auth::user()->id,
            'updated_at' => now(),
            'hakakses_id' => $request->hakakses_id,
        ];
        $id = Crypt::decrypt($request->id);
        DB::table('users')->where(['id' => $id])->update($data);
        return Redirect::back()->with(['success' => 'Data Berhasil Di Ubah!']);
    }
}
