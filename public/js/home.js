/**


 * Created by jim on 2016/10/27.
 *
 */
$(function(){
	(function($, Vue){
		var Home = function(){};
		var baseUrl = $('meta[name="base"]').attr('content');
		Home.prototype.init = function(){

			Vue.component('todo-item', {
				props: ['todo'],
				template: '<li>{{ todo.text }}</li>'
			});
			var app7 = new Vue({
				el: '#app-7',
				data: {
					todos: [
						{ text: 'Learn JavaScript' },
						{ text: 'Learn Vue' },
						{ text: 'Build something awesome' }
					]
				}
			});


			var promise = this.getArticles();
			promise.then(
					function(articles){
						Vue.component('article-item', {
							props: ['article'],
							template: '<li><img src="' + baseUrl + '/{{ article.background }}" alt="{{ article.title }}" /></li>'
						});

						new Vue({
							el: '#articles',
							data: {
								articles: [{background: '1', title: '555555555555555'}]
							}
						});

					},
					function(errors){

					}
			);
		};

		Home.prototype.getArticles = function(){
			var deferred = $.Deferred();
			$.ajax({
				url: baseUrl + '/articles',
				dataType: 'json',
				type: 'GET',
				success: function(data){
					deferred.resolve(data);
				},
				error: function(err){
					deferred.reject(err);
				}
			});

			return deferred.promise();
		};

		var home = new Home();
		home.init();
	})(jQuery, Vue);
});
