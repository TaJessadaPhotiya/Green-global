@extends('main.app')

@section('title', 'Detail')

@section('content')
    <div class="w-full">
        @include('pages.detail.section1')
        @include('pages.detail.section2')
    </div>
@endsection
