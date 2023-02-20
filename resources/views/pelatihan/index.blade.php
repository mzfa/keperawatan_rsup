@extends('layouts.app')

@section('content')

<div class="main-container container">
    <div class="card shadow-sm mb-4">
        <div class="card-body">
            <div class="row">
                <div class="col-auto">
                </div>
                <div class="col px-0 align-self-center">
                    <h5 class="mb-0 text-color-theme">Data Pelatihan</h5>
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
                                            <p>{{ $item->nama_pelatihan }}<br><small class="text-muted">{{ $item->nama_jenis_pelatihan }}</small>
                                            </p>
                                        </div>
                                        <div class="col-auto text-end">
                                            <p>
                                                <small class="text-muted size-12">{{ $item->tanggal_pelatihan }}<br>
                                                    <a class="badge badge-primary rounded-pill bg-primary" onclick="return edit({{ $item->pelatihan_id }})" >Detail</a>
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
        <form action="{{ url('pelatihan/store') }}" method="post" enctype="multipart/form-data">
            @csrf
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="staticBackdropLabel">Tambah Data</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class=" row">
                        <label for="staticEmail" class="col-sm-12 col-form-label">Nama Pelatihan</label>
                        <div class="col-sm-12">
                        <input type="text" class="form-control" id="nama_pelatihan" name="nama_pelatihan" required>
                        </div>
                    </div>
                    <div class=" row">
                        <label for="staticEmail" class="col-sm-12 col-form-label">Jenis Pelatihan</label>
                        <div class="col-sm-12">
                        <select class="form-control" name="jenis_pelatihan_id" id="jenis_pelatihan_id"  required>
                            @foreach($jenis_pelatihan as $item)
                            <option value="{{ $item->jenis_pelatihan_id }}">{{ $item->nama_jenis_pelatihan }}</option>
                            @endforeach
                        </select>
                        </div>
                    </div>
                    <div class=" row">
                        <label for="staticEmail" class="col-sm-12 col-form-label">Tanggal Pelatihan</label>
                        <div class="col-sm-12">
                        <input type="date" class="form-control" id="tanggal_pelatihan" name="tanggal_pelatihan" required>
                        </div>
                    </div>
                    <div class=" row">
                        <label for="staticEmail" class="col-sm-12 col-form-label">Penyelenggara</label>
                        <div class="col-sm-12">
                        <input type="text" class="form-control" id="penyelenggara" name="penyelenggara" required>
                        </div>
                    </div>
                    <div class=" row">
                        <label for="staticEmail" class="col-sm-12 col-form-label">Bukti Pelatihan</label>
                        <div class="col-sm-12">
                        <input type="file" class="form-control" id="bukti_pelatihan" accept="image/*"  name="bukti_pelatihan" required>
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
      <form action="{{ url('pelatihan/update') }}" method="post" enctype="multipart/form-data">
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
            url : "{{ url('pelatihan/edit')}}/"+id,
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