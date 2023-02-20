@extends('layouts.app')

@section('content')
    <div class="main-container container">
        <div class="card shadow-sm mb-4">
            <div class="card-body">
                <div class="row">
                    <div class="col-auto">
                    </div>
                    <div class="col px-0 align-self-center">
                        <h5 class="mb-0 text-color-theme">Manage Menu</h5>
                        <p class="text-muted size-12"></p>
                    </div>
                    <div class="col-auto">
                        <button tooltip="Tambah Data" id="create_record" class="btn btn-primary text-white shadow-sm"
                            type="button" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
                            <i class="bi bi-plus"></i> Tambah
                        </button>
                    </div>
                </div>
            </div>
            <div class="card border-0">
                <div class="card-body">
                    <div class="table-responsive">

                        @if(Session::has('success'))
                            <div class="alert alert-success alert-dismissible fade show" role="alert">
                                <strong>{{ Session::get('success') }}</strong> 
                                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                            </div>
                        @endif

                        <table class="table" style="width: 100%">
                            <thead>
                                <tr>
                                    <th>Nama Menu</th>
                                    <th>Url</th>
                                    <th>#</th>
                                </tr>
                            </thead>
                            <tbody>
                                @php $no=1 @endphp
                                @foreach ($menu as $item)
                                    <tr class="bg-info">
                                        <td>
                                            <h5 class="text-white">{{ strtoupper($item['nama_menu']) }}</h5>
                                            @if ($item['parent_id'] == 0)
                                            @else
                                                <h5 class="text-primary">&nbsp;&nbsp;&nbsp;
                                                    {{ strtoupper($item['nama_menu']) }}</h5>
                                            @endif
                                        </td>
                                        <td>{{ $item['url_menu'] }}</td>
                                        <td>
                                            <a onclick="return edit({{ $item['menu_id'] }})"
                                                class="btn text-white btn-warning"><i class="bi bi-pen"></i></a>
                                            <a onclick="return tambahsubmenu({{ $item['menu_id'] }})"
                                                class="btn text-white btn-primary"><i class="bi bi-plus"></i></a>
                                                @if(empty($item['submenu']))
                                                <a href="{{ url('menu/delete/' . Crypt::encrypt($item['menu_id'])) }}"
                                                    class="btn text-white btn-danger"><i class="bi bi-trash"></i></a>
                                                @endif
                                        </td>
                                    </tr>
                                    @foreach($item['submenu'] as $submenu)
                                    <tr>
                                        <td>
                                            <p class="text-danger">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{{ strtoupper($submenu['nama_menu']) }}</p>
                                        </td>
                                        <td>{{ $submenu['url_menu'] }}</td>
                                        <td>
                                            <a onclick="return edit({{ $submenu['menu_id'] }})"
                                                class="btn text-white btn-info"><i class="bi bi-pen"></i></a>
                                            <a href="{{ url('menu/delete/' . Crypt::encrypt($submenu['menu_id'])) }}"
                                                class="btn text-white btn-danger"><i class="bi bi-trash"></i></a>
                                        </td>
                                    </tr>
                                    @endforeach
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
        aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog">
            <form action="{{ url('menu/store') }}" method="post" enctype="multipart/form-data">
                @csrf
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="staticBackdropLabel">Tambah Data</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <div class="mb-3 row">
                            <label for="staticEmail" class="col-sm-2 col-form-label">Nama Menu</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="nama_menu" name="nama_menu" required>
                            </div>
                        </div>
                        <div class="mb-3 row">
                            <label for="inputPassword" class="col-sm-2 col-form-label">Url</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="url_menu" name="url_menu">
                            </div>
                        </div>
                        <div class="mb-3 row">
                            <label for="inputPassword" class="col-sm-2 col-form-label">Icon</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="icon_menu" name="icon_menu">
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary">Simpan</button>
                    </div>
                </div>
            </form>
        </div>
    </div>

    <div class="modal fade" id="editModal" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
        aria-labelledby="editModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <form action="{{ url('menu/update') }}" method="post">
                @csrf
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="editModalLabel">Edit Data</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <div id="tampildata"></div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary">Simpan</button>
                    </div>
                </div>
            </form>
        </div>
    </div>

    <div class="modal fade" id="subMenuModal" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
        aria-labelledby="subMenuModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <form action="{{ url('menu/store') }}" method="post">
                @csrf
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="subMenuModalLabel">Sub Menu</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <div class="mb-3 row">
                            <label for="nama_menu" class="col-sm-2 col-form-label">Nama Menu</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="nama_menu" name="nama_menu" required>
                            </div>
                        </div>
                        <div class="mb-3 row">
                            <label for="url_menu" class="col-sm-2 col-form-label">Url</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="url_menu" name="url_menu">
                            </div>
                        </div>
                        <div class="mb-3 row">
                            <label for="inputPassword" class="col-sm-2 col-form-label">Icon</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="icon_menu" name="icon_menu">
                            </div>
                        </div>
                        <input type="hidden" name="parent_id" id="parent_id">
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary">Simpan</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
@endsection

@section('scripts')
    <script>
        function edit(id) {
            $.ajax({
                type: 'get',
                url: "{{ url('menu/edit') }}/" + id,
                // data:{'id':id}, 
                success: function(tampil) {

                    // console.log(tampil); 
                    $('#tampildata').html(tampil);
                    $('#editModal').modal('show');
                }
            })
        }

        function tambahsubmenu(id) {
            $('#parent_id').val(id);
            $('#subMenuModal').modal('show');
        }
    </script>
@endsection
