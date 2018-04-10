@section('css')
    <link rel="stylesheet" type="text/css" href="{{ asset('/css/style-contact.css') }}" />
@endsection

@section('contact')
  active
@endsection

@section('title')
    Contact
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
