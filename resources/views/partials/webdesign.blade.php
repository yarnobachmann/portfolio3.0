@section('css')
    <link rel="stylesheet" type="text/css" href="{{ asset('/css/style-webdesign.css') }}" />
@endsection

@section('webdesign')
  active
@endsection

@section('title')
    Webdesign
@endsection

@extends('layout')

@section('content')


  <div class="col-1 left-bar no-padding-margin">
    <img src="{{ asset('/img/arrow/arrow.svg') }}" class="arrow1" alt="arrow">
    <img src="{{ asset('/img/arrow/arrow.svg') }}" class="arrow2" alt="arrow">
  </div>
  <div class="col-11 no-padding-margin uppercase" style="background-color: #c6314f; overflow: auto;">
    <div class="offset-5 col-7 nav-bar">
    @include('partials.navbar')
    <div class="offset-1 col-10" style="background-color: #FFF; height: 280px; margin-top:5%;">

    </div>
    <div class="offset-1 col-10" style="background-color: #FFF; height: 280px; margin-top:5%;">

    </div>
    <div class="offset-1 col-10" style="background-color: #FFF; height: 280px; margin-top:5%;">

    </div>
  </div>

@endsection
