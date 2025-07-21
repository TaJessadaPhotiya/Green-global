@extends('main.app')

@section('title', 'Menu')

@section('content')
    <div class="w-full ">
        @include('pages.menu.section1')
        {{-- @include('pages.menu.section2') --}}
    </div>
@endsection


