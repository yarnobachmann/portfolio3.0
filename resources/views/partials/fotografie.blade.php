@section('css')
    <link rel="stylesheet" type="text/css" href="{{ asset('/css/style-fotografie.css') }}" />
@endsection

@section('fotografie')
  active
@endsection

@section('title')
    Fotografie
@endsection

@extends('layout')

@section('content')


  <div class="col-1 left-bar no-padding-margin">
    <img src="{{ asset('/img/arrow/arrow.svg') }}" class="arrow1" alt="arrow">
    <img src="{{ asset('/img/arrow/arrow.svg') }}" class="arrow2" alt="arrow">
  </div>
  <div class="col-11 no-padding-margin uppercase" style="background-color: #c6314f;">
    <div class="offset-5 col-7 nav-bar">
    @include('partials.navbar')

  </div>

@endsection
