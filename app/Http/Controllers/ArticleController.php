<?php

namespace App\Http\Controllers;

use App\Article;
use Illuminate\Encryption\Encrypter;
use Illuminate\Http\Request;
use Intervention\Image\Facades\Image;
use Ramsey\Uuid\Uuid;

class ArticleController extends Controller
{
    protected $articleModel;

    public function __construct(Article $article)
    {
        $this->middleware('auth')->except(['index', 'show']);
        $this->articleModel = $article;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return $this->articleModel->index();
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('article.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'title' => 'bail|required|max:255',
            'content' => 'bail|required',
            'sticky' => 'number',
            'parent' => 'number'
        ]);

        $fileName = 'storage/' . Uuid::uuid4() .  '.jpg';
        Image::canvas(200, 300, '#CEE')->greyscale()->text($request->input('content'), 50, 0, function($font){
            $font->size(20);
            $font->color('#000');
            $font->align('center');
            $font->valign('top');
            $font->angle(45);
        })->save($fileName);;

        $article = [
            'title' => $request->input('title'),
            'content' => $request->input('content'),
            'background' => $fileName,
            'user_id' => $request->user()->id,
            'status' => $request->input('status'),
            'password' => !empty($request->input('password')) ? encrypt($request->input('password')) : '',
            'sticky' => !empty($request->input('sticky')) ? time() : 0,
            'parent' => !empty($request->input('parent')) ? $request->input('parent') : 0,
            'comment_status' => $request->input('comment_status'),
            'comment_count' => 0
        ];

        return $this->articleModel->createOne($article);
    }

    /**
     * Display the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        return Article::find($id);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
