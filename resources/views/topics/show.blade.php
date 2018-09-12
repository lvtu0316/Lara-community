@extends('layouts.app')

@section('title', $topic->title)
@section('description', $topic->excerpt)

<link rel="stylesheet" href="/css/jquery.atwho.min.css">

@section('scripts')
    <script type="text/javascript" src="https://code.jquery.com/jquery-2.2.0.min.js"></script>
    <script type="text/javascript" src="/js/jquery.caret.min.js"></script>
    <script type="text/javascript" src="/js/jquery.atwho.js"></script>
    <script type="text/javascript" src="/js/at.peron.js"></script>
    <script type="text/javascript" src="/js/vote.js"></script>
@endsection

@section('content')

    <div class="row">

        <div class="col-lg-3 col-md-3 hidden-sm hidden-xs author-info">
            <div class="panel panel-default">
                <div class="panel-body">
                    <div class="text-center">
                        作者：{{ $topic->user->name }}
                    </div>
                    <hr>
                    <div class="media">
                        <div align="center">
                            <a href="{{ route('users.show', $topic->user->id) }}">
                                <img class="thumbnail img-responsive" src="{{ $topic->user->avatar }}" width="300px" height="300px">
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-lg-9 col-md-9 col-sm-12 col-xs-12 topic-content">
            <div class="panel panel-default">
                <div class="panel-body">
                    <h1 class="text-center">
                        {{ $topic->title }}
                    </h1>

                    <div class="article-meta text-center">
                        {{ $topic->created_at->diffForHumans() }}
                        ⋅
                        <span class="glyphicon glyphicon-comment" aria-hidden="true"></span>
                        {{ $topic->reply_count }}
                        ⋅
                        <i class="fa fa-thumbs-o-up"></i> {{$likesCount}}
                    </div>


                    <div class="topic-body">
                        {!! $topic->body !!}
                    </div>
                    @can('update', $topic)
                    <div class="operate">
                        <hr>
                        <a href="{{ route('topics.edit', $topic->id) }}" class="btn btn-default btn-xs" role="button">
                            <i class="glyphicon glyphicon-edit"></i> 编辑
                        </a>
                        <a href="#" class="btn btn-default btn-xs" role="button">
                            <i class="glyphicon glyphicon-trash"></i> 删除
                        </a>
                    </div>
                    @endcan
                </div>
            </div>
            {{--点赞--}}
            <div class="votes-container panel panel-default padding-md">
                @include('topics._like')
            </div>
            {{-- 用户回复列表 --}}
            <div class="panel panel-default topic-reply">
                <div class="panel-body">
                    @includeWhen(Auth::check(), 'topics._reply_box', ['topic' => $topic])
                    @include('topics._reply_list', ['replies' => $topic->replies()->with('user')->get()])
                </div>
            </div>
        </div>
    </div>
@stop

