/**


 * Created by jim on 2016/10/27.
 *
 */
(function($, Vue){
	var Home = function(){};
	var baseUrl = $('meta[name="base"]').attr('content');
	Home.prototype.init = function(){
		Vue.component('article-item', {
			props: ['article'],
			template: '<li><img v-bind:src="article.background" v-bind:alt="article.title" /></li>'
		});

		var promise = this.getArticles();
		promise.then(
				function(articles){
					new Vue({
						el: '#articles',
						data: {
							articles: articles
						}
					});

					//wookmark
					$('#articles').find('li').wookmark();
				},
				function(errors){
					//TODO!!
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
