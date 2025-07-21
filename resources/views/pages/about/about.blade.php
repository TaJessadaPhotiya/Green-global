@extends('main.app')

@section('title', 'About')

@section('content')
    <div class="w-full ">
        @include('pages.about.section1')
        {{-- @include('pages.about.section2') --}}
    </div>
@endsection


