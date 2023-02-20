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
                    <h5 class="mb-0 text-color-theme">Data Bagian</h5>
                    <p class="text-muted size-12"></p>
                </div>
                <div class="col-auto">
                    <a tooltip="Sync Data bagian" href="{{ url('bagian/sync') }}" id="create_record" class="btn btn-danger text-white shadow-sm">
                        <i class="bi bi-sync"></i> Sync
                    </a>
                </div>
            </div>
        </div>
        <div class="card border-0">
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table nowrap" style="width: 100%">
                        <thead>
                            <tr>
                                <th>Nama Bagian</th>
                                <th>Group </th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($data as $bagian1)
                                @empty($bagian1->referensi_bagian)
                                    <tr class="@if ($bagian1->group_bagian == 'GROUP') text-danger @else text-success @endif">
                                        <td>{{ $bagian1->nama_bagian }}</td>
                                        <td>{{ $bagian1->group_bagian }}</td>
                                    </tr>
                                    @foreach ($data as $bagian2)
                                        @if ($bagian1->bagian_id == $bagian2->referensi_bagian)
                                            <tr class="@if ($bagian2->group_bagian == 'GROUP') text-danger @else text-success @endif">
                                                <td>{!! $indent !!}{{ $bagian2->nama_bagian }}</td>
                                                <td>{{ $bagian2->group_bagian }}</td>
                                            </tr>
                                        @endif
                                        @foreach ($data as $bagian3)
                                            @if ($bagian1->bagian_id == $bagian2->referensi_bagian && $bagian2->bagian_id == $bagian3->referensi_bagian)
                                                <tr class="@if ($bagian3->group_bagian == 'GROUP') text-danger @else text-success @endif">
                                                    <td>{!! $indent . $indent !!}{{ $bagian3->nama_bagian }}</td>
                                                    <td>{{ $bagian3->group_bagian }}</td>
                                                </tr>
                                            @endif
                                        @endforeach
                                    @endforeach
                                @endempty
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

@endsection