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
    <img src="{{ asset('/img/banners/contact.svg') }}" class="banner-contact animated-banner" alt="banner-contact">
  </div>
  <div class="col-8 no-padding-margin" style="background-color: #c6314f; overflow: hidden;">
    <div class="nav-bar">
    @include('partials.navbar')
      <div class="offset-1 col-6 form">
        {{ Form::open(['class' => 'd-none animated form']) }}

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
        <a href="#"><h3>{{ $contact->email }}</h3></a>
        <a href="https://api.whatsapp.com/send?phone={{ $contact->whapp_number }}&text=Hallo%20mijn%20naam%20is%20" target="_blank"> <h3>{{ $contact->phone_number }}</h3> </a>
        <br>
        <h3>{{ $contact->street_name }} {{ $contact->house_number }}</h3>
        <h3>{{ $contact->recidence }}</h3>
        <a href="https://www.instagram.com/_yarno_/" target="_blank"> <img src="{{ asset('/img/social/instagram-logo.svg') }}" alt="instagram" class="instagram"></a> <a href="https://www.linkedin.com/in/jarno-bachmann-3b1022137/" target="_blank"> <img src="{{ asset('/img/social/linkedin-logo.svg') }}" alt="linkedin" class="linkedin"></a>
      </div>
    </div>
  </div>

@endsection

@section('js')
  <script type="text/javascript">
  $(document).ready(function(){
    var form = $('.form');
    var hidden = 'd-none';
    var banner = $('.banner-contact');

    form.removeClass(hidden).addClass('slideInUp');

    setTimeout(function(){
      banner.addClass('fadeOut');
    }, 5000);

  });
  </script>
@endsection
