<?php namespace App\Presenters;

use Illuminate\Support\Facades\Auth;
use Laracasts\Presenter\Presenter;
use Route;
use App\Models\User;
use App\Models\Role;
use Cache;

class UserPresenter extends Presenter
{
    /**
     * Present a link to the user gravatar.
     */
    public function gravatar()
    {
        $user = Auth::user();
        $avatar = $user->avatar;

        return $avatar;
    }

    public function loginQR($size = 80)
    {
        if (!$this->login_token) {
            $this->entity->login_token = str_random(20);
            $this->entity->save();
        }

        return \QrCode::format('png')
            ->size(200)
            ->errorCorrection('L')
            ->margin(0)
            ->encoding('utf-8')
            ->generate($this->id . ',' . $this->login_token);
    }

    public function userinfoNavActive($anchor)
    {
        return Route::currentRouteName() == $anchor ? 'active' : '';
    }

    public function hasBadge()
    {
        $relations = Role::relationArrayWithCache();
        $user_ids = array_pluck($relations, 'user_id');
        return in_array($this->id, $user_ids);
    }

    public function badgeID()
    {
        $role = $this->getBadge();
        if (!$role) {
            return;
        }
        return $role->id;
    }

    public function badgeName()
    {
        $role = $this->getBadge();
        if (!$role) {
            return;
        }
        return $role->display_name;
    }

    public function getBadge()
    {
        $relations = Role::relationArrayWithCache();

        // 用户所在的用户组，显示 role_id 最小的名称
        $relations = array_sort($relations, function ($value) {
            return $value->role_id;
        });

        $relation = array_first($relations, function ($key, $value) {
            return $value->user_id == $this->id;
        });

        if (!$relation) {
            return false;
        }

        $roles = Role::rolesArrayWithCache();

        $role = array_first($roles, function ($key, $value) use (&$relation) {
            return $value->id == $relation->role_id;
        });

        return $role;
    }

    public function isAdmin()
    {
        $relations = Role::relationArrayWithCache();

        $relations = array_where($relations, function ($key, $value) {
            return $value->user_id == $this->id && $value->role_id <= 2;
        });

        return count($relations);
    }

    public function followingUsersJson()
    {
        $users = \Auth::user()->followings()->lists('name');

        return json_encode($users);
    }

    public function lastActivedAt()
    {
        $show_key  = config('phphub.actived_time_data');
        $show_data = Cache::get($show_key);

        if (!isset($show_data[$this->id])) {
            $show_data[$this->id] = $this->last_actived_at;
            Cache::forever($show_key, $show_data);
        }

        return $show_data[$this->id];
    }

    public function formattedSignature()
    {
        return (new Markdown)->convertMarkdownToHtml($this->signature);
    }
}
