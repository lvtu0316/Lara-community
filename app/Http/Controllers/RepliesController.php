<?php

namespace App\Http\Controllers;

use App\Models\Reply;
use App\Models\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests\ReplyRequest;
use Illuminate\Support\Facades\Auth;

class RepliesController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }


	public function store(ReplyRequest $request,Reply $reply)
	{

	    $body = $request->text;
        preg_match_all("/@.*?(?=( |$))/",$request->text,$matched_name);

        foreach($matched_name[0] as $key=> $name) {
            $name=substr($name,1);

            $user_id  =User::where('name','like binary',$name)->value('id');

            if(!$user_id) {
                continue;
            }
            $reply_user_id[$key]=$user_id;
            $body=str_replace('@'.$name,'<a href="/users/'.$reply_user_id[$key].'" title= "'.$name.'">@'.$name.'</a>',$body);
        }
    	$reply->content = $body;
		$reply->user_id = Auth::id();
		$reply->topic_id = $request->topic_id;
		$reply->save();
		return redirect()->to($reply->topic->link())->with('success','成功回复。');

	}


	public function destroy(Reply $reply)
	{
		$this->authorize('destroy', $reply);
		$reply->delete();

		return redirect()->to($reply->topic->link())->with('success', '删除成功.');
	}
}