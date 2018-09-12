@section("styles")
<style>
    .vote-box .btn {
        padding: 6px 20px;
    }

    .voted-users {
        padding: 25px 12px 5px;
    }

    .voted-users .avatar {
        margin: 4px;
    }

    .vote-box .btn-primary.active {
        background-color: #05c1b8;
        border-color: #15cfc7;
    }

    .sites-index .panel .panel-heading {
        color: #959897;
    }

</style>
@stop
<div class="panel-body vote-box text-center">

    <div class="btn-group">
        <?php
        $is_voted = $currentUser && $topic->isLikedBy(); ;
        ?>
        <a data-ajax="post" href="javascript:void(0);" data-url="{{route('topics.upvote',$topic->id)}}" title="" data-content="点赞相当于收藏，可以在个人页面的「赞过的话题」导航里查看" id="up-vote" class="vote btn btn-primary popover-with-html {{  $is_voted ? 'active' :'' }}" data-original-title="Up Vote">
            @if ($is_voted)
                <span id="vote-button">已赞过</span>
            @else
                <i class="fa fa-thumbs-up" aria-hidden="true"></i>
                <span id="vote-button">点赞</span>
            @endif

        </a>

    </div>

    <div class="voted-users">

        <div class="user-lists">
            @foreach($likers as $index=>$liker)
                <a href="{{route('users.show',$liker->id)}}" data-userid="{{$liker->id}}">
                    <img class="img-thumbnail avatar avatar-middle" src="{{$liker->avatar}}" style="width:48px;height:48px;">
                </a>
            @endforeach
        </div>

        <a class="voted-template" href="" data-userid="" style="display:none">
            <img class="img-thumbnail avatar avatar-middle" src="" style="width:48px;height:48px;">
        </a>
    </div>

</div>
