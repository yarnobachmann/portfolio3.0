@section('css')
    <link rel="stylesheet" type="text/css" href="{{ asset('/css/style-over.css') }}" />
@endsection

@section('over')
  active
@endsection

@section('title')
    Over
@endsection

@extends('layout')

@section('content')


  <div class="col-4 left-banner no-padding-margin">

  </div>
  <div class="col-8 no-padding-margin" style="background-color: #c6314f;">
    <div class="offset-3 col-9 nav-bar">
    @include('partials.navbar')

  </div>

@endsection
