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
    <div class="nav-bar">
    @include('partials.navbar')
    <img src="{{ asset('/img/banners/over-front.jpg') }}" class="yarno" alt="Yarno">
    <div class="offset-1 col-10 top-text">
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
    </div>
    <div class="offset-1 col-5 left-text">
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
    </div>
  </div>

@endsection
