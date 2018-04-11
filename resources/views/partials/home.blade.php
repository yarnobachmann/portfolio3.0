@section('css')
    <link rel="stylesheet" type="text/css" href="{{ asset('/css/style-home.css') }}" />
@endsection

@section('title')
    Home
@endsection

@extends('layout')

@section('content')

  <div id="myNav" class="overlay">
    <div class="overlay-content uppercase">

      <a href="{{ url('/fotografie') }}">Fotografie</a><br>
      <a href="{{ url('/webdesign') }}">Webdesign</a><br>
      <a href="{{ url('/over') }}">Over</a><br>
      <a href="{{ url('/contact') }}">Contact</a>

    </div>
  </div>

  <div class="col-4 homepage-cover">
    <h1 class="no-padding-margin left-text1 uppercase">Foto</h1>
    <h1 class="no-padding-margin left-text2 uppercase">Web</h1>
  </div>
  <div class="col-8" style="background-color: #c6314f;">
    <img src="{{ asset('/img/logo/logo.svg') }}" class="logo" alt="Logo">
    <h1 class="no-padding-margin right-text1 uppercase">grafie</h1>
    <h1 class="no-padding-margin right-text2 uppercase">design</h1>
    <div id="nav-icon" onclick="openNav()">
      <span></span>
      <span></span>
      <span></span>
    </div>
  </div>

@endsection

@section('js')
<script type="text/javascript">
  $(document).ready(function(){
    $('#nav-icon').click(function(){
      $(this).toggleClass('open');
    });
  });

  function openNav() {
   var x = document.getElementById("myNav");
   if (x.style.width === "100%") {
       x.style.width = "0%";
   } else {
       x.style.width = "100%";
   }
  }
</script>
@endsection
