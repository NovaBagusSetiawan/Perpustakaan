@extends('template')

@section('judul')
Form Kategori
@stop

@section('content')
<form id="frmKategori" class="form-horizontal" action="{{ url('kategori/save') }}" method="post" enctype="multipart/form-data">
<input type="hidden" name="_token" value="{{ csrf_token() }}">
    <div class="row">
        <div class="fForm col-md-8">
            <div class="box">
                <!-- Bidodata Anggota -->
                <div class="box-header with-border">
                    <h3 class="box-title">Data Kategori</h3>
                </div>
                <div class="box-body">
                    <div class="form-group">
                        <label for="kategori" class="col-sm-2 control-label">kategori</label>
                        <div class="col-sm-10">
                            <input type="hidden" class="form-control" id="kd_kategori" name="kd_kategori" value="{{ $kategori['kd_kategori'] }}">
                            <input type="text" class="form-control" id="kategori" placeholder="Nama Kategori" name="kategori" value="{{ $kategori['nama_kategori'] }}">
                        </div>
                    </div>
                </div>
                <!-- /.box-body -->
                <div class="box-footer">
                    <button type="submit" class="btn btn-primary pull-right">SAVE</button>
                </div>                   
            </div>
        </div>       
    </div>
</form>
@stop
