<section class="b-section b-section--news mt-5">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <h2>
                    Agenda
                </h2>

                @foreach($groups as $key => $talks)
                    <h3>{{ $key }}</h3>
                    @foreach($talks as $talk)
                        <article class="b-schedule-item">

                            <div class="b-schedule-item-header__date">
                            <span class="b-schedule-item-header__time">
                                {{ Carbon\Carbon::parse($talk->starts_at)->format('H:i') }}
                                -
                                {{ Carbon\Carbon::parse($talk->ends_at)->format('H:i') }}
                            </span>
                            </div>

                            <div class="b-schedule-item-body">
                                <div class="row">
                                    <div class="col-12 col-sm-7 col-md-5 col-lg-4 col-xl-4">
                                        <img src="{{ $talk->thumbnail }}" alt="{{ $talk->speaker->name }}"
                                             class="img-fluid rounded">
                                    </div>
                                    <div class="col-12 col-sm-7 col-md-7 col-lg-8 col-xl-8">
                                        <span class="b-schedule-item__place text-uppercase">{{ $talk->room->name }}</span>
                                        <a href="{{ route('showTalk', $talk->slug) }}">
                                            <h4 class="b-schedule-item__title">
                                                {{ $talk->title }}
                                            </h4>
                                        </a>

                                        <p>
                                            <strong>Conferencista: </strong>
                                            <span class="b-schedule-item__speaker">{{ $talk->speaker->name }}</span>
                                        </p>

                                        <p class="b-schedule-item__summary">
                                            {!!  $talk->summary  !!}
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </article>
                    @endforeach
                @endforeach

                {{-- Be aware when using grouping by the pagination doesn't work --}}
                {{--{{ $groups->links() }}--}}
            </div>
        </div>
    </div>
</section>
