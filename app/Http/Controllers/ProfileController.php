<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\File; 
use Illuminate\Contracts\Session\Session;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Storage;

class ProfileController extends Controller
{
    public function index()
    {
        $id = Auth::user()->id;
        $data = DB::table('users')
        ->leftJoin('pegawai', 'users.pegawai_id', '=', 'pegawai.pegawai_id')
        ->leftJoin('pegawai_detail', 'users.pegawai_id', '=', 'pegawai_detail.pegawai_id')
        ->leftJoin('bagian', 'pegawai.bagian_id', '=', 'bagian.bagian_id')
        ->leftJoin('profesi', 'pegawai.profesi_id', '=', 'profesi.profesi_id')
        ->select([
            'users.username',
            'pegawai.*',
            'pegawai.pegawai_id AS idpeg',
            'pegawai_detail.*',
            'bagian.nama_bagian',
            'profesi.nama_profesi'
        ])
        ->whereNull('pegawai.deleted_at')
        ->where(['id' => $id])
        ->get();
        $provinsi = DB::table('pegawai_detail')->distinct()->get(['provinsi']);
        $kabupaten = DB::table('pegawai_detail')->distinct()->get(['kabupaten']);
        // dd($provinsi);
        if(isset($data[0])){
            $data = $data[0];
        }
        return view('profile.index', compact('data','provinsi','kabupaten'));
    }

    public function alamat(Request $request){
        // dd($request);
        $pegawai_detail_id = $request->pegawai_detail_id;
        $data = [
            'alamat_lengkap' => $request->alamat_lengkap,
            'provinsi' => $request->provinsi,
            'kelurahan' => $request->kelurahan,
            'kabupaten' => $request->kabupaten,
            'kode_pos' => $request->kode_pos,
            'pegawai_id' => $request->pegawai_id,
        ];
        $cek = DB::table('pegawai_detail')->where(['pegawai_detail_id' => $pegawai_detail_id])->get();
        if(isset($cek[0])){
            DB::table('pegawai_detail')
            ->update(
                $data,
                ['pegawai_detail_id' => $pegawai_detail_id],
            );
        }else{
            DB::table('pegawai_detail')
            ->insert(
                $data
            );
        }
        return Redirect::back()->with(['success' => 'Data Berhasil Di Simpan!']);
    }
    public function kontak(Request $request){
        // dd($request);
        $pegawai_detail_id = $request->pegawai_detail_id;
        $pegawai_id = $request->pegawai_id;
        $data = [
            'telp_pribadi' => $request->telp_pribadi,
            'telp_keluarga' => $request->telp_keluarga,
            'pegawai_id' => $request->pegawai_id,
        ];
        $cek = DB::table('pegawai_detail')->where(['pegawai_detail_id' => $pegawai_detail_id])->get();
        if(isset($cek[0])){
            DB::table('pegawai_detail')
            ->update(
                [
                    'telp_pribadi' => $request->telp_pribadi,
                    'telp_keluarga' => $request->telp_keluarga,
                    'pegawai_id' => $request->pegawai_id,
                ],
                ['pegawai_detail_id' => $pegawai_detail_id],
            );
        }else{
            DB::table('pegawai_detail')
            ->insert(
                [
                    'telp_pribadi' => $request->telp_pribadi,
                    'telp_keluarga' => $request->telp_keluarga,
                    'pegawai_id' => $request->pegawai_id,
                ]
            );
        }
        return Redirect::back()->with(['success' => 'Data Berhasil Di Simpan!']);
    }
    public function updateProfile(Request $request){
        // dd($request);
        $request->validate([
            'foto_profile' => 'required|mimes:png,jpg,jpeg|max:2048'
        ]);
        $pegawai_detail_id = $request->pegawai_detail_id;
        $pegawai_id = $request->pegawai_id;
        $cek = DB::table('pegawai_detail')->where(['pegawai_detail_id' => $pegawai_detail_id])->get();
        if(isset($cek[0])){
            if($request->hasFile('foto_profile')){
                $fileLama = public_path('images/profile/'.$request->image);
                File::delete($fileLama);
                $foto_profile = round(microtime(true) * 1000).'-'.str_replace(' ','-',$request->file('foto_profile')->getClientOriginalName());
                $request->file('foto_profile')->move(public_path('images/profile'), $foto_profile);
                $data = [
                    'foto_profile' => $foto_profile,
                ];
                DB::table('pegawai_detail')
                ->update(
                    $data,
                    ['pegawai_detail_id' => $pegawai_detail_id],
                );
            }
        }else{
            if($request->hasFile('foto_profile')){
                $foto_profile = round(microtime(true) * 1000).'-'.str_replace(' ','-',$request->file('foto_profile')->getClientOriginalName());
                $request->file('foto_profile')->move(public_path('images/profile'), $foto_profile);
                $data = [
                    'foto_profile' => $foto_profile,
                ];
                DB::table('pegawai_detail')
                ->insert(
                    $data
                );
            }
        }
        return Redirect::back()->with(['success' => 'Data Berhasil Di Simpan!']);
    }
}
