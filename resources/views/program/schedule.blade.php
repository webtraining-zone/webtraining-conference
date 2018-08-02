<section class="b-section b-section--news mt-5">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <h2>
                    Schedule
                </h2>

                <h3>Tuesday</h3>
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
                                <div class="col-4 col-sm-3 col-md-3 col-lg-2 col-xl-1">
                                    <img src="{{ $talk->thumbnail }}" alt="{{ $talk->speaker->name }}"
                                         class="rounded-circle img-fluid">
                                </div>
                                <div class="col-8 col-sm-9 col-md-9 col-lg-10 col-xl-11">
                                    <span class="b-schedule-item__place text-uppercase">{{ $talk->room->name }}</span>
                                    <a href="{{ route('showTalk', $talk->slug) }}">
                                        <h4 class="b-schedule-item__title">
                                            {{ $talk->title }}
                                        </h4>
                                    </a>

                                    <p>
                                        <strong>Speaker: </strong>
                                        <span class="b-schedule-item__speaker">{{ $talk->speaker->name }}</span>
                                    </p>

                                    <p class="b-schedule-item__summary">
                                        {{ $talk->summary }}
                                    </p>
                                </div>
                            </div>
                        </div>
                    </article>
                @endforeach


            </div>
        </div>
    </div>
</section>
