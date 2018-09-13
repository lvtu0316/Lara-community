@if (count($topics))

<ul class="list-group">
    @foreach ($topics as $topic)
    <li class="list-group-item">
        <a href="{{ $topic->likeable->link() }}">
            {{ $topic->likeable->title }}
        </a>
        <span class="meta pull-right">
                {{ $topic->likeable->reply_count }} 回复
                <span> ⋅ </span>
                {{ $topic->likeable->created_at->diffForHumans() }}
            </span>
    </li>
    @endforeach
</ul>

@else
<div class="empty-block">暂无数据 ~_~ </div>
@endif

{{-- 分页 --}}
{!! $topics->render() !!}