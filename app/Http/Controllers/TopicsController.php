<?php

namespace App\Http\Controllers;

use App\Handlers\ImageUploadHandler;
use App\Models\Category;
use App\Models\Link;
use App\Models\Reply;
use App\Models\Topic;
use App\Models\User;
use Illuminate\Http\Request;
use App\Http\Requests\TopicRequest;
use Illuminate\Support\Facades\Auth;
class TopicsController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth', ['except' => ['index', 'show','search']]);
    }

	public function index(Request $request,Topic $topic,User $user,Link $link)
	{

        $active_users = $user->getActiveUsers();
        $topics = $topic->withOrder($request->order)->paginate(30);
        $links = $link->getAllCached();
		return view('topics.index', compact('topics','active_users','links'));
	}
    public function search(Request $request,Topic $topic,User $user,Link $link)
    {
        $active_users = $user->getActiveUsers();
        $topics = Topic::search($request->keywords)->paginate(30);
//        $topics = User::search($request->keywords)->paginate(30);
//        dd($topics);
        $links = $link->getAllCached();
        $keyword = $request->keywords;
        return view('topics.search', compact('topics','active_users','links','keyword'));
    }
    public function show(Topic $topic,Request $request)
    {
        // URL 矫正
        if ( ! empty($topic->slug) && $topic->slug != $request->slug) {
            return redirect($topic->link(),301);
        }
        $likesCount = $topic->likesCount;
        $likers = $topic->collectLikers();
        return view('topics.show', compact(['topic','likesCount','likers']));
    }

	public function create(Topic $topic)
	{
        $categories = Category::all();
		return view('topics.create_and_edit', compact('topic','categories'));
	}

	public function store(TopicRequest $request,Topic $topic)
	{
		$topic->fill($request->all());
        $topic->user_id = Auth::id();
        $topic->save();
		return redirect()->to($topic->link())->with('success', '创建成功');
	}

	public function edit(Topic $topic)
	{
        $this->authorize('update', $topic);
        $categories = Category::all();
		return view('topics.create_and_edit', compact('topic','categories'));
	}

	public function update(TopicRequest $request, Topic $topic)
	{
		$this->authorize('update', $topic);
		$topic->update($request->all());

		return redirect()->to($topic->link())->with('success', '更新成功.');
	}

	public function destroy(Topic $topic)
	{
		$this->authorize('destroy', $topic);
		$topic->delete();

		return redirect()->route('topics.index')->with('success', '删除成功.');
	}

    public function uploadImage(Request $request, ImageUploadHandler $uploader)
    {
        // 初始化返回数据，默认是失败的
        $data = [
            'success'   => false,
            'msg'       => '上传失败!',
            'file_path' => ''
        ];
        // 判断是否有上传文件，并赋值给 $file
        if ($file = $request->upload_file) {
            // 保存图片到本地
            $result = $uploader->save($request->upload_file, 'topics', \Auth::id(), 1024);
            // 图片保存成功的话
            if ($result) {
                $data['file_path'] = $result['path'];
                $data['msg']       = "上传成功!";
                $data['success']   = true;
            }
        }
        return $data;
    }

    /*
     * 点赞
     */

    public function upvote($id)
    {

        $user = Auth::user();

        $topic = Topic::find($id);
        if ($user->hasLiked($topic))
        {
            $user->unlike($topic);
        }else{
            $user->like($topic);
        }
        return response(['status' => 200]);
    }

}