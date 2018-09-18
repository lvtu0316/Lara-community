<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
<head>
    <meta charset="utf-8">
    {{--<meta http-equiv="X-UA-Compatible" content="IE=edge">--}}
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="x-pjax-version" content="{{ mix('/css/app.css') }}">
    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>@yield('title', 'LaraBBS') - {{ setting('site_name', 'Laravel 进阶教程') }}</title>
    <meta name="description" content="@yield('description', setting('seo_description', 'LaraBBS 爱好者社区。'))" />
    <meta name="keyword" content="@yield('keyword', setting('seo_keyword', 'LaraBBS,社区,论坛,开发者论坛'))" />
    <script>
        Config = {
            'user_id': {{ $currentUser ? $currentUser->id : 0 }},
            'user_avatar': {!! $currentUser ? '"'.$currentUser->present()->gravatar() . '"' : '""' !!},
            {{--'user_link': '{!! $currentUser ? '"'. route('users.show', $currentUser->id) . '"' : '""' !!}',--}}
            {{--'user_badge': '{{ $currentUser ? ($currentUser->present()->hasBadge() ? $currentUser->present()->badgeName() : '') : '' }}',--}}
            {{--'user_badge_link': "{{ $currentUser ? (route('roles.show', [$currentUser->present()->badgeID()])) : '' }}",--}}
            {{--'routes': {--}}
                {{--'notificationsCount' : '{{ route('notifications.count') }}',--}}
                {{--'upload_image' : '{{ route('upload_image') }}'--}}
            {{--},--}}
            'token': '{{ csrf_token() }}',
            'environment': '{{ app()->environment() }}',
            'following_users': [],
            'qa_category_id': '{{ config('phphub.qa_category_id') }}'
        };
        var ShowCrxHint = '{{isset($show_crx_hint) ? $show_crx_hint : 'no'}}';


    </script>

    <!-- Styles -->
    <link href="/css/app.css" rel="stylesheet">
    {{--<link href="/css/font-awesome.min.css" rel="stylesheet">--}}
    <link rel='stylesheet' href='https://unpkg.com/nprogress@0.2.0/nprogress.css'/>
    @yield('styles')
</head>

<body>
<div id="app" class="{{ route_class() }}-page">

    @include('layouts._header')
    @include('layouts._message')
    <div class="container">

        @yield('content')

    </div>

    @include('layouts._footer')
</div>

<!-- Scripts -->

<script src="{{ asset('js/app.js') }}"></script>
@yield('scripts')
<script src="{{ asset('js/jquery.pjax.js') }}"></script>

<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script src='https://unpkg.com/nprogress@0.2.0/nprogress.js'></script>
<script src="{{ asset('js/load.js') }}"></script>

</body>
</html>