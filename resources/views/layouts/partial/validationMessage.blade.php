@if ($errors->any())
    @foreach ($errors->all() as $error)
        @php
            toastr()->error($error);
        @endphp
    @endforeach

@endif

@if(session('successMsg'))
    @php
        toastr()->success(session('successMsg'));
    @endphp
@endif
