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
  <div class="col-11 no-padding-margin uppercase" id="scroll" style="background-color: #c6314f; overflow-y:scroll;">
    <div class="nav-bar">
    @include('partials.navbar')
    <div class="space">

    </div>
    <div class="offset-1 col-10 d-none animated bar-project " style="background-color: #2b2d2c; height: 280px; margin-top:5%;  display:flex; justify-content: center; align-items:center;">
      <div class="no-padding-margin project" style="background-color: rgba(3, 3, 3, 0.80); height: 100%; width: 100%; position:absolute;">
        <h1>Kingscode</h1>
      </div>
      <img src="{{ asset('/img/placehold/project.png') }}" style="height:80%;" alt="">
    </div>
    <div class="offset-1 col-10  d-none animated bar-project" style="background-color: #2b2d2c; height: 280px; margin-top:5%;  display:flex; justify-content: center; align-items:center;">
      <div class="no-padding-margin project" style="background-color: rgba(3, 3, 3, 0.80); height: 100%; width: 100%; position:absolute;">
        <h1>Kingscode</h1>
      </div>
      <img src="{{ asset('/img/placehold/project.png') }}" style="height:80%;" alt="">
    </div>
    <div class="offset-1 col-10  d-none animated bar-project" style="background-color: #2b2d2c; height: 280px; margin-top:5%;  display:flex; justify-content: center; align-items:center;">
      <div class="no-padding-margin project" style="background-color: rgba(3, 3, 3, 0.80); height: 100%; width: 100%; position:absolute;">
        <h1>Kingscode</h1>
      </div>
      <img src="{{ asset('/img/placehold/project.png') }}" style="height:80%;" alt="">
    </div>
    <div class="space-bottom">

    </div>

  </div>


@endsection

@section('js')
<script>
  $(document).ready(function() {
    $(".arrow2").click(function(event){
      $('#scroll').animate({scrollTop: '+=150px'}, 300);
    });
    $(".arrow1").click(function(event){
      $('#scroll').animate({scrollTop: '-=150px'}, 300);
    });

    var bars = [];
    $('.bar-project').each(function(index, object) {
        bars.push(object);
    });

    var project = $('.bar-project');
    var hidden = 'd-none';
    var index = 0;

    var interval = setInterval(function() {
      
      $(bars[index]).removeClass(hidden).addClass('slideInUpBig');

      index++;
        if(index == bars.length){
            clearInterval(interval);
        }
      }, 250);

  });
</script>
@endsection
