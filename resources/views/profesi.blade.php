@extends('layouts.app')

@section('content')
@php
    $indent = '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;';
@endphp
<div class="main-container container">
    <div class="card shadow-sm mb-4">
        <div class="card-body">
            <div class="row">
                <div class="col-auto">
                </div>
                <div class="col px-0 align-self-center">
                    <h5 class="mb-0 text-color-theme">Data Profesi</h5>
                    <p class="text-muted size-12"></p>
                </div>
                <div class="col-auto">
                    <a tooltip="Sync Data profesi" href="{{ url('profesi/sync') }}" id="create_record" class="btn btn-danger text-white shadow-sm">
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
                                <th>Nama Profesi</th>
                                <th>Group </th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($data as $profesi)
                                <tr>
                                    <td>{{ $loop->iteration }}</td>
                                    <td>{{ $profesi->nama_profesi }}</td>
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