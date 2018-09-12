$( document ).ready(function() {
    var self = this;
    $(document).on('click', '[data-ajax]', function() {
        var that = $(this);
        var method = that.data('ajax');
        var url = that.data('url');
        var active = that.is('.active');
        var voteCount = $('#vote-count');
        var upVote = $('#up-vote');
        var inShareLinkIndex = $('.share-link-index');
        var isVote = that.is('.vote');
        var isUpVote = that.is('#up-vote');
        var isCommentVote = that.is('.comment-vote');
        var commenVoteCount = that.find('.vote-count');
        var originUpVoteActive = upVote.is('.active');

        if (Config.user_id === 0) {
            swal({
                title: "",
                text: '需要登录以后才能执行此操作。',
                icon: "warning",
                buttons: true,
                buttons: ["取消", "前往登录"],

            }).then(function() {

                location.href = '/login';

            })
        }



        if (active) {
            that.removeClass('active');

            if (isVote) {
                // @CJ 如果是点赞，并且是已经点过赞的点赞，那就是去除点赞
                $('.user-lists').find("a[data-userid='" + Config.user_id + "']").fadeOut('slow/400/fast', function() {
                    $(this).remove();
                    $('#vote-button').text('点赞');
                });
            }
        } else {
            that.addClass('active');

            if (isVote && Config.user_id > 0) {
                // @CJ 如果是点赞，并且是没有点过赞的
                var newContent = $('.voted-template').clone();
                newContent.attr('data-userid', Config.user_id);
                newContent.attr('href', Config.user_link);
                newContent.find('img').attr('src', Config.user_avatar);

                newContent.prependTo('.user-lists').show('fast', function() {
                    $(this).addClass('animated swing');
                });

                $('.vote-hint').hide();
                $('#vote-button').text('已点赞');
            }
        }

        $.ajax({
            method: method,
            url: url,
            data: { _token:Config.token }
        }).done(function(data) {
            if (data.status === 200) {
                if (isCommentVote) {
                    commenVoteCount.html(data.count);
                }

                if (inShareLinkIndex && isVote) {
                    that.find('span').text(data.count);
                }
            }
        }).fail(function() {
            if (!active) {
                that.removeClass('active');


            } else {
                that.addClass('active');

                if (cancelText) {
                    that.find('span').html(cancelText);
                }


            }

            if (isVote) {
                if (originUpVoteActive) {
                    upVote.addClass('active');
                } else {
                    upVote.removeClass('active');
                }
            }
        }).always(function() {
            that.removeClass('ajax-loading');
        });
    });
});