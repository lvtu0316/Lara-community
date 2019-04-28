<?php

namespace App\Models;

use \Cog\Laravel\Love\Like\Models\Like;
use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Support\Facades\Auth;
use Laracasts\Presenter\PresentableTrait;
use Spatie\Permission\Traits\HasRoles;
use Tymon\JWTAuth\Contracts\JWTSubject;
use Laravel\Scout\Searchable;
use Cog\Contracts\Love\Liker\Models\Liker as LikerContract;
use Cog\Laravel\Love\Liker\Models\Traits\Liker;


class User extends Authenticatable implements JWTSubject, LikerContract
{
    use Traits\ActiveUserHelper;
    use Traits\LastActivedAtHelper;
    use Liker;

    use PresentableTrait;
    protected $presenter = 'App\Presenters\UserPresenter';
    use Searchable;

    public function searchableAs()
    {
        return 'users';
    }

    public function toSearchableArray()
    {
        return [
            'content' => $this->name
        ];
    }

    use Notifiable {
        notify as protected laravelNotify;
    }
    use HasRoles;
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'password','introduction','avatar','weixin_openid', 'weixin_unionid','phone','registration_id',
        'weixin_session_key', 'weapp_openid'
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];


    public function notify($instance)
    {
        $this->increment('notification_count');
        $this->laravelNotify($instance);
    }
    public function markAsRead()
    {
        $this->notification_count = 0;
        $this->save();
        $this->unreadNotifications->markAsRead();
    }



    public function topics()
    {
        return $this->hasMany(Topic::class);

    }

    public function replies()
    {
        return $this->hasMany(Reply::class);
    }

    public function likes()
    {
        return $this->hasMany(Like::class, 'user_id');
    }

    public function setPasswordAttribute($value)
    {
        // 如果值的长度等于 60，即认为是已经做过加密的情况
        if (strlen($value) != 60) {

            // 不等于 60，做密码加密处理
            $value = bcrypt($value);
        }

        $this->attributes['password'] = $value;
    }

    public function setAvatarAttribute($path)
    {
        // 如果不是 `http` 子串开头，那就是从后台上传的，需要补全 URL
        if ( ! starts_with($path, 'http')) {

            // 拼接完整的 URL
            $path = config('app.url') . "/uploads/images/avatars/$path";
        }

        $this->attributes['avatar'] = $path;
    }

    // Rest omitted for brevity

    public function getJWTIdentifier()
    {
        return $this->getKey();
    }

    public function getJWTCustomClaims()
    {
        return [];
    }


}
