@extends("layouts.app")
@section("content")
    <section class="b-section b-section--dark">
        <div class="container">
            <div class="row">
                <div class="col-12 col-sm-12 col-md-4 col-lg-3 col-xl-3">
                    <div class="b-image-container p-5">
                        <img src="/img/program/schedule.png" alt="Let's talk and learn"
                             class="img-fluid">
                    </div>
                </div>
                <div class="col-12 col-sm-12 col-md-8 col-lg-8 col-xl-8">
                    <h1 class="mt-0 mt-sm-5 mt-md-5 mt-lg-5 mt-xl-5 text-center text-sm-left">{{ __('Program') }}</h1>
                    <p class="text-center text-sm-left">Let's talk and learn</p>
                </div>
            </div>
        </div>
    </section>
    @include("program.schedule")
@endsection