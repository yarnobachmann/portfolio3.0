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
        <a href="https://api.whatsapp.com/send?phone=31637241371&text=Hallo%20mijn%20naam%20is%20" target="_blank"> <h3>+31 6 37241371</h3> </a>
        <br>
        <h3>Oranjedorpstraat 58</h3>
        <h3>Nieuw-Dordrecht</h3>
        <a href="https://www.instagram.com/_yarno_/" target="_blank"> <img src="{{ asset('/img/social/instagram-logo.svg') }}" alt="instagram" class="instagram"></a> <a href="https://www.linkedin.com/in/jarno-bachmann-3b1022137/" target="_blank"> <img src="{{ asset('/img/social/linkedin-logo.svg') }}" alt="linkedin" class="linkedin"></a>
      </div>
    </div>
  </div>

@endsection
