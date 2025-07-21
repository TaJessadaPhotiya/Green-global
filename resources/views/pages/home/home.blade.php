@extends('main.app')

@section('title', 'Home')

@section('content')

    <div class="w-full ">
        @include('pages.home.section1')
        @include('pages.home.section2')
        @include('pages.home.section3')
    </div>
@endsection
