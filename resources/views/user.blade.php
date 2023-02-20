@extends('layouts.app')

@section('content')

<div class="main-container container">
    <div class="card shadow-sm mb-4">
        <div class="card-body">
            <div class="row">
                <div class="col-auto">
                </div>
                <div class="col px-0 align-self-center">
                    <h5 class="mb-0 text-color-theme">Data User</h5>
                    <p class="text-muted size-12"></p>
                </div>
                <div class="col-auto">
                    <a tooltip="Sync Data User" href="{{ url('user/sync') }}" id="create_record" class="btn btn-danger text-white shadow-sm">
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
                                <th>Nama</th>
                                <th>Username</th>
                                <th>Level User </th>
                                <th>#</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($data as $item)
                            <tr>
                                <td>{{ $item->name }}</td>
                                <td>{{ $item->username }}</td>
                                <td>{{ $item->nama_hakakses }}</td>
                                <td><a onclick="return akses({{ $item->id }})" class="btn text-white btn-info">Kasih Akses</a></td>
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="aksesModal" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="aksesModalLabel" aria-hidden="true">
    <div class="modal-dialog">
    <form action="{{ url('user/update') }}" method="post">
        @csrf
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="aksesModalLabel">User Akses</h5>
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
    function akses(id){
        // let filter = $(this).attr('id'); 
        // filter = filter.split("-");
        // var tfilter = $(this).attr('id');
        // console.log(id);
        $.ajax({ 
            type : 'get',
            url : "{{ url('user/edit')}}/"+id,
            // data:{'id':id}, 
            success:function(tampil){

                // console.log(tampil); 
                $('#tampildata').html(tampil);
                $('#aksesModal').modal('show');
            } 
        })
    }
</script>

@endsection