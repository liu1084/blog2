<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Article extends Model
{
    public function createOne($entries)
    {
        if (!is_array($entries)){
            abort(404);
        }
        return Article::save($entries);
    }

    public function read($id)
    {
        if (!isset($id) || empty($id)){
            abort(404);
        }
        $user = Article::find($id);
        if (is_null($user)){
            abort(404);
        }

        return $user;
    }

    public function updateOne($entry)
    {
        if (!is_array($entry)){
            abort(404);
        }

        $id = $entry['id'];

        if (!isset($id) || empty($id)){
            abort(404);
        }

        $user = Article::find($id);
        while(list($key, $value) = each ($entry)){
            $user->$key = $value;
        }

        return Article::save();
    }

    public function deleteById($id)
    {
        return Article::find($id)->delete();
    }

    public function index()
    {
        return Article::all();
    }

    public function readById($id)
    {
        return Article::find($id)->get()->first();
    }
}
