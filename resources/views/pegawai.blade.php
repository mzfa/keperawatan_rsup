@extends('layouts.app')

@section('content')

<div class="main-container container">
    <div class="card shadow-sm mb-4">
        <div class="card-body">
            <div class="row">
                <div class="col-auto">
                </div>
                <div class="col px-0 align-self-center">
                    <h5 class="mb-0 text-color-theme">Data Pegawai</h5>
                    <p class="text-muted size-12"></p>
                </div>
                <div class="col-auto">
                    <a tooltip="Sync Data pegawai" href="{{ url('pegawai/sync') }}" id="create_record" class="btn btn-danger text-white shadow-sm">
                        <i class="bi bi-sync"></i> Sync
                    </a>
                </div>
            </div>
        </div>
        <div class="card border-0">
            <div class="card-body">
                <div class="table-responsive">
                    <table id="allData" class="table nowrap" style="width: 100%">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Nama Pegawai</th>
                                <th>Nomor Induk</th>
                                <th>Bagian</th>
                                <th>Profesi</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($data as $pegawai)
                                <tr>
                                    <td>{{ $loop->iteration }}</td>
                                    <td>{{ $pegawai->nama_pegawai }}</td>
                                    <td>{{ $pegawai->nip }}</td>
                                    <td>{{ $pegawai->nama_bagian }}</td>
                                    <td>{{ $pegawai->nama_profesi }}</td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

@endsection