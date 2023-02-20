<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Redirect;

class PegawaiController extends Controller
{
    public function index()
    {
        $data = DB::table('pegawai')
        ->leftJoin('bagian', 'pegawai.bagian_id', '=', 'bagian.bagian_id')
        ->leftJoin('profesi', 'pegawai.profesi_id', '=', 'profesi.profesi_id')
        ->select([
            'pegawai.nama_pegawai',
            'pegawai.nip',
            'bagian.nama_bagian',
            'profesi.nama_profesi'
        ])
        ->whereNull('pegawai.deleted_at')
        ->get();
        return view('pegawai', compact('data'));
    }

    public function sync()
    {
        // dd("ok");
        $list_pegawai_phis = DB::connection('PHIS-V2')
        ->table('pegawai')
        ->select([
            'pegawai_id',
            'input_time',
            'input_user_id',
            'mod_time',
            'mod_user_id',
            'status_batal',
            'nama_pegawai',
            'nip',
            'bagian_id',
            'profesi_id'
        ])
        ->orderBy('pegawai_id')
        ->get();

        foreach ($list_pegawai_phis as $pegawai) {
            if ($pegawai->status_batal) {
                $deleted_at = $pegawai->mod_time ?? now();
                $deleted_by = $pegawai->mod_user_id ?? 1;
            } else {
                $deleted_at = null;
                $deleted_by = null;
            }
            $datanya[] = [
                'pegawai_id' => $pegawai->pegawai_id,
                'created_at' => $pegawai->input_time,
                'created_by' => $pegawai->input_user_id,
                'updated_at' => $pegawai->mod_time,
                'updated_by' => $pegawai->mod_user_id,
                'deleted_at' => $deleted_at,
                'deleted_by' => $deleted_by,
                'nama_pegawai' => $pegawai->nama_pegawai,
                'nip' => $pegawai->nip,
                'bagian_id' => $pegawai->bagian_id,
                'profesi_id' => $pegawai->profesi_id
            ];
        }

        DB::table('pegawai')->truncate();
        DB::table('pegawai')->insert($datanya);
        return Redirect::back()->with(['success' => 'Data Berhasil Di Perbarui!']);

        // return redirect()->back()->with('status', ['success', 'Data berhasil disimpan']);
    }
}
