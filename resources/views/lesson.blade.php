@extends('layouts.front')

@section('content')
<section class="detail section" id="detail">
    <div class="detail-container grid" style="row-gap: 5rem">
        <div class="watch-data-left" id="watch-data-left">
            <iframe id="video-player" src="https://www.youtube.com/embed/{{ $lesson->embed_id }}" allowfullscreen></iframe>
            
            <!-- Add a hidden test container -->
            <div id="test-container" style="display: none;">
                @if($test_exists)
                    @if (!is_null($test_result))
                        <div class="alert alert-info">Your test score: {{ $test_result->test_result }}</div>
                    @else
                        <form action="{{ route('lessons.test', [$lesson->slug]) }}" method="post">
                            @csrf
                            @foreach ($lesson->test->questions as $question)
                                <h3 for="question" style="margin-bottom: 1.2rem">
                                    {{ $loop->iteration }}. {{ $question->question }}
                                </h3>

                                @foreach ($question->options as $option)
                                    <input type="radio" name="questions[{{ $question->id }}]" value="{{ $option->id }}" style="margin-bottom: 0.8rem" /> {{ $option->option_text }}
                                    <br />
                                @endforeach
                            @endforeach

                            <button class="button" 
                                style="border: none; padding: 0.4rem 1.4rem; border-radius: 1rem;margin-top: 1rem;">Submit Result</button>
                        </form>
                    @endif
                @endif
            </div>

            @if($purchased_course)
                @if ($previous_lesson)
                    <div class="swiper-button-prev watch-prev-icon" style="left: 10px; right: initial; bottom: 0px; border-radius: 50%;">
                        <a href="{{ route('lessons.show', [$previous_lesson->course_id, $previous_lesson->slug]) }}">
                            <i class="bx bx-left-arrow-alt"></i>
                        </a>
                    </div>
                @endif
                @if ($next_lesson)
                    <div class="swiper-button-next watch-next-icon" style="right: 10px; left: initial; bottom: 0px; border-radius: 50%;">
                        <a href="{{ route('lessons.show', [$next_lesson->course_id, $next_lesson->slug]) }}">
                            <i class="bx bx-right-arrow-alt"></i>
                        </a>
                    </div>
                @endif
            @endif
        </div>
    </div>
</section>

@section('scripts')
<script>
    document.getElementById('video-player').addEventListener('load', function () {
        var player = this;
        player.contentWindow.postMessage('{"event":"command","func":"addEventListener","args":["onStateChange"]}', '*');
    });

    window.addEventListener('message', function (event) {
        if (event.origin === "https://www.youtube.com") {
            var data = JSON.parse(event.data);
            // Check if the video has ended
            if (data.event === "onStateChange" && data.info === 0) { // 0 means video ended
                document.getElementById('test-container').style.display = 'block'; // Show the test
            }
        }
    });
</script>
@endsection

@endsection
