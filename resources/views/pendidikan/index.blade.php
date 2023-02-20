@extends('layouts.app')

@section('content')

<div class="main-container container">
    <div class="card shadow-sm mb-4">
        <div class="card-body">
            <div class="row">
                <div class="col-auto">
                </div>
                <div class="col px-0 align-self-center">
                    <h5 class="mb-0 text-color-theme">Data Pendidikan</h5>
                    <p class="text-muted size-12"></p>
                </div>
                <div class="col-auto">
                    <button tooltip="Tambah Data" id="create_record" class="btn btn-primary text-white shadow-sm" type="button" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
                        <i class="bi bi-plus"></i> Tambah
                    </button>
                </div>
            </div>
        </div>
        <div class="card border-0">
            <div class="card-body">
                @if(Session::has('success'))
                    <div class="alert alert-success alert-dismissible fade show" role="alert">
                        <strong>{{ Session::get('success') }}</strong> 
                        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                    </div>
                @endif
                @if ($errors->any())
                <div class="alert alert-danger alert-dismissible fade show" role="alert">
                    @foreach ($errors->all() as $error)
                        <strong>{{$error}} <br></strong> 
                    @endforeach
                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                </div>
                @endif
                <div class="row">
                    <div class="col-12">
                        <div class="card shadow-sm mb-4">
                            <ul class="list-group list-group-flush bg-none">
                                @foreach($data as $item)
                                <li class="list-group-item">
                                    <div class="row">
                                        {{-- <div class="col-auto">
                                            <figure class="avatar avatar-50 rounded-10 shadow-sm">
                                                <img src="assets/img/user1.jpg" alt="">
                                            </figure>
                                        </div> --}}
                                        <div class="col">
                                            <p>{{ $item->nama_instansi }}<br><small class="text-muted">{{ $item->nama_pendidikan }}</small>
                                            </p>
                                        </div>
                                        <div class="col-auto text-end">
                                            <p>
                                                <small class="text-muted size-12">Lulus : {{ $item->tahun_lulus }}<br>
                                                    <a class="badge badge-primary rounded-pill bg-primary" onclick="return edit({{ $item->pendidikan_id }})" >Detail</a>
                                                </small>
                                            </p>
                                        </div>
                                    </div>
                                </li>
                                @endforeach
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog">
        <form action="{{ url('pendidikan/store') }}" method="post" enctype="multipart/form-data">
            @csrf
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="staticBackdropLabel">Tambah Data</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="mb-3 row">
                        <label for="staticEmail" class="col-sm-12 col-form-label">Jenis Pendidikan</label>
                        <div class="col-sm-12">
                            <select name="jenis_pendidikan_id" id="jenis_pendidikan_id" class="form-control">
                                @foreach($pendidikan as $item)
                                    <option value="{{ $item->jenis_pendidikan_id }}">{{ $item->nama_pendidikan }}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>
                    <div class="mb-3 row">
                        <label for="staticEmail" class="col-sm-12 col-form-label">Nama Instansi</label>
                        <div class="col-sm-12">
                        <input type="text" class="form-control" id="nama_instansi" name="nama_instansi" required>
                        </div>
                    </div>
                    <div class="mb-3 row">
                        <label for="staticEmail" class="col-sm-12 col-form-label">Tahun Mulai</label>
                        <div class="col-sm-12">
                        <input type="text" class="form-control" id="tahun_mulai" name="tahun_mulai" required>
                        </div>
                    </div>
                    <div class="mb-3 row">
                        <label for="staticEmail" class="col-sm-12 col-form-label">Tahun Lulus</label>
                        <div class="col-sm-12">
                        <input type="text" class="form-control" id="tahun_lulus" name="tahun_lulus" required>
                        </div>
                    </div>
                    <div class="mb-3 row">
                        <label class="col-sm-12 col-form-label" for="address4">Jurusan/Fakultas</label>
                        
                        <div class="col-sm-12">
                            <input type="text" list="datalistjurusan" name="jurusan" class="form-control"
                            id="address4" placeholder="Select Jurusan">
                            <datalist id="datalistjurusan">
                                @foreach($jurusan as $item)
                                    <option value="{{ $item->jurusan }}">
                                @endforeach
                            </datalist>
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
    
<div class="modal fade" id="editModal" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="editModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <form action="{{ url('pendidikan/update') }}" method="post">
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

@endsection

@section('scripts')
<script>
    function edit(id){
        // let filter = $(this).attr('id'); 
        // filter = filter.split("-");
        // var tfilter = $(this).attr('id');
        // console.log(id);
        $.ajax({ 
            type : 'get',
            url : "{{ url('pendidikan/edit')}}/"+id,
            // data:{'id':id}, 
            success:function(tampil){

                // console.log(tampil); 
                $('#tampildata').html(tampil);
                $('#editModal').modal('show');
            } 
        })
    }
</script>

@endsection