<?php

namespace App\Models;
use Laravel\Scout\Searchable;

class Reply extends Model
{
    use Searchable;

    public function searchableAs()
    {
        return 'replies';
    }

    public function toSearchableArray()
    {
        return [
            'content' => $this->content
        ];
    }

    protected $fillable = [ 'topic_id','user_id','content'];

    public function topic()
    {
        return $this->belongsTo(Topic::class);
    }
    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
