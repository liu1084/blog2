const elixir = require('laravel-elixir');

require('laravel-elixir-vue');

/*
 |--------------------------------------------------------------------------
 | Elixir Asset Management
 |--------------------------------------------------------------------------
 |
 | Elixir provides a clean, fluent API for defining some basic Gulp tasks
 | for your Laravel application. By default, we are compiling the Sass
 | file for our application, as well as publishing vendor resources.
 |
 */

elixir(mix => {
	//mix.sass('**/*.scss')
	mix.webpack('app.js')
		//.webpack('home.js')
		.copy('resources/assets/js/home.js', 'public/js/home.js')
		//.copy('resources/assets/bower_components', 'public/bower_components')
		.webpack('article/create.js');
});
