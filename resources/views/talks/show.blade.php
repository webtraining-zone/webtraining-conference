@extends("layouts.app")
@section("content")

    <article class="b-talk">

        <section class="b-section b-section--dark b-section--talk-main">
            <div class="container">
                <div class="row">
                    <div class="col-12 col-sm-12 col-md-4 col-lg-3 col-xl-3">
                        <div class="b-talk__image pt-5">
                            <img src="{{$talk->image}}" alt="Let's continue doing business"
                                 class="img-fluid img-thumbnail">
                        </div>
                    </div>
                    <div class="col-12 col-sm-12 col-md-8 col-lg-8 col-xl-8">
                        <div class="mt-3 mt-sm-5 mt-md-5 mt-lg-5 mt-xl-5 text-center text-sm-left">
                            <span class="b-talk__place text-uppercase d-block">{{ $talk->room->name }}</span>
                            <h1 class="b-talk__title">{{ $talk->title }}</h1>
                            <p class="b-talk__speaker pb-5">
                                <strong>{{ __('Speaker') }}: </strong>
                                <span>{{ $talk->speaker->name }}</span>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="b-section b-section--highlighted">
            <span class="b-talk__time text-center d-block p-3">
                {{  Carbon\Carbon::parse($talk->starts_at)->format('l jS, h:i A') }}
                {{--{{ Carbon\Carbon::parse($talk->starts_at)->format('H:i') }}--}}
                -
                {{ Carbon\Carbon::parse($talk->ends_at)->format('h:i A') }}
            </span>
        </section>

        <section class="b-section b-section--talk-extra">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="mt-5">
                            <p class="text-center text-sm-left">{{ $talk->description }}</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>

    </article>


@endsection