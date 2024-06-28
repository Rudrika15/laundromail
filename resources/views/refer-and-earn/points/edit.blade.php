@extends('layouts.app')

@section('content')
    <div class="container-fluid mt-5">
        <div class="col-sm-6 p-md-0  mt-2 mt-sm-0 d-flex">
            <a href="{{ route('refer.point.index') }}" class="btn btn-danger mb-1"><i class="fa fa-arrow-left"></i> Back</a>
        </div>

        <div class="row">
            <div class="col-xl-7 col-xxl-7 col-lg-7 m-auto">
                <div class="card shadow rounded-12 border-0">
                    <div class="card-header py-3">
                        <h4 class="card-title">Edit point</h4>
                    </div>
                    <div class="card-body">
                        <form action="{{ route('refer.point.update') }}" method="POST">
                            @csrf
                            {{-- @method('put') --}}
                            <input type="hidden" name="pointId" value="{{ $point->id }}">
                            <label>{{ __('Title') }}</label>
                            <input name="title" class="form-control" type="text" placeholder="Title" value="{{ $point->title }}" />

                            <label>{{ __('Points') }}</label>
                            <input name="points" class="form-control" type="text" placeholder="points" value="{{ $point->points }}" />


                            <label>{{ __('Details') }}</label>
                            <textarea name="details" class="form-control" placeholder="write details">{{ $point->details }} </textarea>

                            <div class="text-right mt-3">

                                <button type="submit" class="btn btn-primary ">Update</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

@push('scripts')
    <script>
        $('#name').keyup(function() {
            $('#slug').val($(this).val().toLowerCase().split(',').join('').replace(/\s/g, "-"));
        });
    </script>
@endpush
