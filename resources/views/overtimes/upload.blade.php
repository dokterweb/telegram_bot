@extends('adminlte::page')

@section('title', 'Overtime Karyawan')

@section('content_header')
    <h1>Overtime</h1>
@stop

@section('content')

@if (session('success'))
    <div class="alert alert-success">
        {{ session('success') }}
    </div>
@endif

@if (session('error'))
    <div class="alert alert-danger">
        {{ session('error') }}
    </div>
@endif
<div class="card">
    <div class="card-header">
    <h3 class="card-title">Upload</h3>
        
    </div>
    <div class="card-body">
        <div class="col-md-6">
            <form action="{{ route('overtimes.upload') }}" method="POST" enctype="multipart/form-data">
                @csrf
                <div class="form-group">
                    <label>Upload File Overtime (PDF)</label>
                    <input type="file" name="file" class="form-control" accept="application/pdf" required>
                    <small class="form-text text-muted">
                        File harus berisi slip gaji dengan format yang sesuai
                    </small>
                </div>
                <div class="form-group mb-3">
                    <label for="periode">Periode (misal: Januari 2025)</label>
                    <input type="month" name="periode" class="form-control" required>
                </div>

                <div class="card-footer">
                    <button type="submit" class="btn btn-primary">Submit</button>
                </div>

                <div class="progress mt-3" style="height: 25px; display: none;">
                    <div class="progress-bar progress-bar-striped progress-bar-animated" style="width: 0%">0%</div>
                </div>
                
            </form>
        </div>
    </div>
</div>
@stop

@section('css')

@stop

@section('js')
    
    
    <script>
         $('#uploadForm').submit(function (e) {
            e.preventDefault();

            var formData = new FormData(this);

            $.ajax({
                xhr: function () {
                    var xhr = new window.XMLHttpRequest();
                    xhr.upload.addEventListener('progress', function (e) {
                        if (e.lengthComputable) {
                            var percent = Math.round((e.loaded / e.total) * 100);
                            $('.progress').show();
                            $('.progress-bar').css('width', percent + '%').text(percent + '%');
                        }
                    });
                    return xhr;
                },
                type: 'POST',
                url: "{{ route('gaji.upload') }}",
                data: formData,
                contentType: false,
                processData: false,
                success: function (data) {
                    window.location.reload();
                },
                error: function (xhr) {
                    alert('Gagal upload file! Pastikan file benar.');
                    console.error(xhr.responseText);
                }
            });
        });
    </script>
   
                
    
@stop