<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Article extends Model
{
    private $id;
    private $title;
    private $content;
    private $createAt;

    public function index()
    {
        return $this->query();
    }
}
