@extends('main.app')

@section('title', 'News-detail')

@section('content')
    <div class="w-full">
        @include('pages.news-detail.section1')
        @include('pages.news-detail.section2')
    </div>
@endsection
