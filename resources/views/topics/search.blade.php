@extends('layouts.app')
<link rel="stylesheet" href="/css/main.css">
@section('content')

    @if($keyword)
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default list-panel search-results">
                    <div class="panel-heading">
                        <h3 class="panel-title ">
                            <i class="fa fa-search"></i> 关于 “<span class="highlight">{{ $keyword }}</span>” 的搜索结果, 共 {{ $topics->total() }} 条
                        </h3>
                    </div>

                    <div class="panel-body ">
                        @foreach($topics as $topic)
                            <div class="result">
                                <h2 class="title">
                                    <a href="{{ $topic->link() }}" target="_blank">
                                        {{ isset($topic->highlight['title'])}}
                                        @if (isset($topic->highlight['title']))
                                            @foreach ($topic->highlight['title'] as $item)
                                                {!! $item !!}
                                            @endforeach
                                        @else
                                            {{ $topic->title }}
                                        @endif
                                    </a>
                                </h2>
                                <div class="info">
                                </div>
                                <div class="desc">
                                    @if (isset($topic->highlight['body']))
                                        @foreach ($topic->highlight['body'] as $item)
                                            ......{!! $item !!}......
                                        @endforeach
                                    @else
                                        {{ mb_substr($topic->body, 0, 150) }}......
                                    @endif
                                </div>
                                <hr>
                            </div>
                        @endforeach
                    </div>
                    {!! $topics->render() !!}
                </div>
            </div>
        </div>
    @else
        <div class="empty-block">暂无数据 ~_~ </div>
    @endif
@endsection