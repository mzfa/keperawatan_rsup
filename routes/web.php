<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\MenuController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\BagianController;
use App\Http\Controllers\PegawaiController;
use App\Http\Controllers\ProfesiController;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\HakAksesController;
use App\Http\Controllers\RegisterController;
use App\Http\Controllers\Admin\UserController;
use App\Http\Controllers\JenisPendidikanController;
use App\Http\Controllers\PendidikanController;
use App\Http\Controllers\JenisPelatihanController;
use App\Http\Controllers\KompetensiController;
use App\Http\Controllers\PekerjaanController;
use App\Http\Controllers\PelatihanController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/


Route::get('/', [\App\Http\Controllers\LoginController::class, 'index'])->name('login');
Route::get('/login', [\App\Http\Controllers\LoginController::class, 'index'])->name('login');
Route::post('/login', [\App\Http\Controllers\LoginController::class, 'authenticate'])->name('login.store');
Route::get('/register', [\App\Http\Controllers\RegisterController::class, 'index'])->name('register');
Route::post('/register', [\App\Http\Controllers\RegisterController::class, 'store'])->name('register.store');
Route::post('/logout', function () {
    auth()->logout();
    request()->session()->invalidate();
    request()->session()->regenerateToken();
    
    return redirect('/');
})->name('logout');

Route::group(['middleware' => ['auth']], function () {
    Route::get('/home', [\App\Http\Controllers\HomeController::class, 'index'])->name('home');
    // route::group()->middleware();
    Route::controller(HakAksesController::class)->middleware('cek_login:hakakses.index')->group(function () {
        Route::get('/hakakses', 'index')->name('hakakses.index');
        Route::get('/hakakses/edit/{id}', 'edit');
        Route::get('/hakakses/delete/{id}', 'delete');
        Route::get('/hakakses/modul_akses/{id}', 'modul_akses');
        Route::post('/hakakses/modul_akses', 'modul_akses_store');
        Route::post('/hakakses/store', 'store');
        Route::post('/hakakses/update', 'update');
    });
    Route::controller(MenuController::class)->middleware('cek_login:menu.index')->group(function () {
        Route::get('/menu', 'index')->name('menu.index');
        Route::get('/menu/edit/{id}', 'edit');
        Route::get('/menu/status/{id}', 'status');
        Route::get('/menu/delete/{id}', 'delete');
        Route::post('/menu/store', 'store');
        Route::post('/menu/update', 'update');
    });
    Route::controller(UserController::class)->middleware('cek_login:user.index')->group(function () {
        Route::get('/user', 'index')->name('user.index');
        Route::get('/user/sync', 'sync');
        Route::get('/user/edit/{id}', 'edit');
        Route::post('/user/update', 'update');
    });
    Route::controller(BagianController::class)->middleware('cek_login:bagian.index')->group(function () {
        Route::get('/bagian', 'index')->name('bagian.index');
        Route::get('/bagian/sync', 'sync');
    });
    Route::controller(ProfesiController::class)->middleware('cek_login:profesi.index')->group(function () {
        Route::get('/profesi', 'index')->name('profesi.index');
        Route::get('/profesi/sync', 'sync');
    });
    Route::controller(PegawaiController::class)->middleware('cek_login:pegawai.index')->group(function () {
        Route::get('/pegawai', 'index')->name('pegawai.index');;
        Route::get('/pegawai/sync', 'sync');
    });
    Route::controller(JenisPendidikanController::class)->middleware('cek_login:jenis_pendidikan.index')->group(function () {
        Route::get('/jenis_pendidikan', 'index')->name('jenis_pendidikan.index');;
        Route::get('/jenis_pendidikan/sync', 'sync');
        Route::post('/jenis_pendidikan/store', 'store');
        Route::post('/jenis_pendidikan/update', 'update');
        Route::get('/jenis_pendidikan/edit/{id}', 'edit');
        Route::get('/jenis_pendidikan/delete/{id}', 'delete');
    });
    Route::controller(JenisPelatihanController::class)->middleware('cek_login:jenis_pelatihan.index')->group(function () {
        Route::get('/jenis_pelatihan', 'index')->name('jenis_pelatihan.index');;
        Route::get('/jenis_pelatihan/sync', 'sync');
        Route::post('/jenis_pelatihan/store', 'store');
        Route::post('/jenis_pelatihan/update', 'update');
        Route::get('/jenis_pelatihan/edit/{id}', 'edit');
        Route::get('/jenis_pelatihan/delete/{id}', 'delete');
    });
    
    Route::controller(ProfileController::class)->middleware('cek_login:profile.index')->group(function () {
        Route::get('/profile', 'index')->name('profile.index');;
        Route::get('/profile/sync', 'sync');
        Route::post('/profile/alamat', 'alamat');
        Route::post('/profile/kontak', 'kontak');
        Route::post('/profile/updateProfile', 'updateProfile');
    });
    Route::controller(PekerjaanController::class)->middleware('cek_login:pekerjaan.index')->group(function () {
        Route::get('/pekerjaan', 'index')->name('pekerjaan.index');;
        Route::get('/pekerjaan/sync', 'sync');
        Route::post('/pekerjaan/store', 'store');
        Route::post('/pekerjaan/update', 'update');
        Route::get('/pekerjaan/edit/{id}', 'edit');
        Route::get('/pekerjaan/delete/{id}', 'delete');
    });
    Route::controller(KompetensiController::class)->middleware('cek_login:kompetensi.index')->group(function () {
        Route::get('/kompetensi', 'index')->name('kompetensi.index');;
        Route::get('/kompetensi/sync', 'sync');
        Route::post('/kompetensi/store', 'store');
        Route::post('/kompetensi/update', 'update');
        Route::get('/kompetensi/edit/{id}', 'edit');
        Route::get('/kompetensi/delete/{id}', 'delete');
    });
    Route::controller(PelatihanController::class)->middleware('cek_login:pelatihan.index')->group(function () {
        Route::get('/pelatihan', 'index')->name('pelatihan.index');;
        Route::get('/pelatihan/sync', 'sync');
        Route::post('/pelatihan/store', 'store');
        Route::post('/pelatihan/update', 'update');
        Route::get('/pelatihan/edit/{id}', 'edit');
        Route::get('/pelatihan/delete/{id}', 'delete');
    });
    Route::controller(PendidikanController::class)->middleware('cek_login:pendidikan.index')->group(function () {
        Route::get('/pendidikan', 'index')->name('pendidikan.index');;
        Route::get('/pendidikan/sync', 'sync');
        Route::post('/pendidikan/store', 'store');
        Route::post('/pendidikan/update', 'update');
        Route::get('/pendidikan/edit/{id}', 'edit');
        Route::get('/pendidikan/delete/{id}', 'delete');
    });


    // Route::group(['middleware' => ['cek_login:Admin']], function () {
    //     Route::get('/admin/home', [\App\Http\Controllers\Admin\HomeController::class, 'index'])->name('homeadmin');
    //     Route::get('/admin/user', [\App\Http\Controllers\Admin\UserController::class, 'index'])->name('useradmin');
    //     Route::get('/admin/karyawan', [\App\Http\Controllers\Admin\KaryawanController::class, 'index'])->name('karyawanadmin');
    //     Route::get('/admin/bidang', [\App\Http\Controllers\Admin\BidangController::class, 'index'])->name('bidangadmin');
    //     Route::get('/admin/pendidikan', [\App\Http\Controllers\Admin\PendidikanController::class, 'index'])->name('pendidikanadmin');
    //     Route::get('/admin/pendidikan/status/{id}', [\App\Http\Controllers\Admin\PendidikanController::class, 'status'])->name('pendidikanadmin');
    //     Route::get('/admin/pendidikan/edit/{id}', [\App\Http\Controllers\Admin\PendidikanController::class, 'edit'])->name('pendidikanadmin');
    //     Route::get('/admin/pendidikan/delete/{id}', [\App\Http\Controllers\Admin\PendidikanController::class, 'delete'])->name('pendidikanadmin');
    //     Route::post('/admin/pendidikan/store', [\App\Http\Controllers\Admin\PendidikanController::class, 'store']);
    //     Route::post('/admin/pendidikan/update', [\App\Http\Controllers\Admin\PendidikanController::class, 'update']);
    // });
    Route::group(['middleware' => ['cek_login:User']], function () {
        // Route::get('/profile', [\App\Http\Controllers\User\ProfileController::class, 'index'])->name('profile');
        // Route::get('/profesi', [\App\Http\Controllers\User\ProfesiController::class, 'index'])->name('profesi');
        // Route::get('/pekerjaan', [\App\Http\Controllers\User\PekerjaanController::class, 'index'])->name('pekerjaan');
        // Route::get('/pelatihan', [\App\Http\Controllers\User\PelatihanController::class, 'index'])->name('pelatihan');
        // Route::get('/kinerja', [\App\Http\Controllers\User\KinerjaController::class, 'index'])->name('kinerja');
        // Route::get('/kompetensi', [\App\Http\Controllers\User\KompetensiController::class, 'index'])->name('kompetensi');
    });
    // Route::get('/notification', [\App\Http\Controllers\Admin\HomeController::class, 'index'])->name('home');

});

