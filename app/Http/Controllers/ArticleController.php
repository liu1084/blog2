<?php

namespace App\Http\Controllers;

use App\Article;
use Illuminate\Http\Request;

class ArticleController extends Controller
{
    protected $article;

    public function __construct(Article $article){
        $this->article = $article;
    }

    public function index(){
        return $this->article->index();
    }

    public function read($id){
        return $this->article->read($id);
    }

    public function createOne($entry){
        return $this->article->createOne($entry);
    }

    /**
     * @return Article
     */
    public function getArticle()
    {
        return $this->article;
    }

    /**
     * @param Article $article
     */
    public function setArticle($article)
    {
        $this->article = $article;
    }
}
