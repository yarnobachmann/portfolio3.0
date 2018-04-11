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
    <div class="nav-bar">
    @include('partials.navbar')
      <div class="offset-1 col-6 form">
        {{ Form::open() }}

          {{ Form::label('naam', 'Naam:') }}
          {{ Form::text('naam', null, ['class' => 'form-control', 'required' => '', 'placeholder' => 'Hier het naampje!']) }}

          {{ Form::label('email', 'Email:') }}
          {{ Form::email('email', null, ['class' => 'form-control', 'required' => '', 'placeholder' => 'Emailtje!']) }}

          {{ Form::label('bericht', 'Bericht:') }}
          {{ Form::textarea('bericht', null, ['class' => 'form-control ', 'required' => '', 'placeholder' => 'Stuur me wat leuks!']) }}

          {{ Form::submit('stuur') }}

        {{ Form::close() }}

      </div>
      <div class="col-4 contact-text">
        <h3>Yarno Bachmann</h3>
        <a href="#"><h3>yarnobachmann@gmail.com</h3></a>
        <h3>+31 6 37241371</h3>
        <br>
        <h3>Oranjedorpstraat 58</h3>
        <h3>Nieuw-Dordrecht</h3>
        <img src="{{ asset('/img/social/instagram-logo.svg') }}" alt="instagram" class="instagram"><img src="{{ asset('/img/social/linkedin-logo.svg') }}" alt="linkedin" class="linkedin">
      </div>
    </div>
  </div>

@endsection
