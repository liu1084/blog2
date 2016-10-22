<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Article extends Model
{
    protected $fillable = [
        'title',
        'content',
        'background',
        'user_id',
        'status',
        'password',
        'sticky',
        'parent',
        'comment_status',
        'comment_count'
    ];

    public function index(){
        return self::where(['status'=> 'publish'])
            ->orderBy('sticky', 'desc')
            ->orderBy('create_at', 'desc')
            ->orderBy('rating', 'desc')
            ->get();
    }

    public function createOne($article){
        return self::create($article);
    }

    public function removeOne($id){
        return self::where(['id' => $id])->delete();
    }

    public function updateOne($article){
        $this->fill($article);
        return $this->update($article);
    }
}
