<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Contracts\Session\Session;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Crypt;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Redirect;

class JenisPendidikanController extends Controller
{
    public function index()
    {
        $data = DB::table('jenis_pendidikan')->whereNull('jenis_pendidikan.deleted_at')->get();
        return view('jenis_pendidikan.index', compact('data'));
    }
    public function store(Request $request){
        $request->validate([
            'nama_pendidikan' => ['required', 'string'],
        ]);
        $data = [
            'created_by' => Auth::user()->id,
            'created_at' => now(),
            'nama_pendidikan' => $request->nama_pendidikan,
        ];
        DB::table('jenis_pendidikan')->insert($data);

        return Redirect::back()->with(['success' => 'Data Berhasil Di Simpan!']);
    }

    public function edit($id)
    {
        // $id = Crypt::decrypt($id);
        // dd($data);
        $text = "Data tidak ditemukan";
        if($data = DB::select("SELECT * FROM jenis_pendidikan WHERE jenis_pendidikan_id='$id'")){

            $text = '<div class="mb-3 row">'.
                    '<label for="staticEmail" class="col-sm-2 col-form-label">Nama Pendidikan</label>'.
                    '<div class="col-sm-10">'.
                    '<input type="text" class="form-control" id="nama_pendidikan" name="nama_pendidikan" value="'.$data[0]->nama_pendidikan.'" required>'.
                    '</div>'.
                '</div>'.
                '<input type="hidden" class="form-control" id="jenis_pendidikan_id" name="jenis_pendidikan_id" value="'.Crypt::encrypt($data[0]->jenis_pendidikan_id) .'" required>';
        }
        return $text;
        // return view('jenis_pendidikan.edit');
    }

    public function update(Request $request){
        $request->validate([
            'nama_pendidikan' => ['required', 'string'],
        ]);
        $data = [
            'updated_by' => Auth::user()->id,
            'updated_at' => now(),
            'nama_pendidikan' => $request->nama_pendidikan,
        ];
        $jenis_pendidikan_id = Crypt::decrypt($request->jenis_pendidikan_id);
        $status_pendidikan = "Aktif";
        DB::table('jenis_pendidikan')->where(['jenis_pendidikan_id' => $jenis_pendidikan_id])->update($data);
        return Redirect::back()->with(['success' => 'Data Berhasil Di Ubah!']);
    }
    public function delete($id){
        $id = Crypt::decrypt($id);
        $data = [
            'deleted_by' => Auth::user()->id,
            'deleted_at' => now(),
        ];
        DB::table('jenis_pendidikan')->where(['jenis_pendidikan_id' => $id])->update($data);
        return Redirect::back()->with(['success' => 'Data Berhasil Di Hapus!']);
    }
    
}
