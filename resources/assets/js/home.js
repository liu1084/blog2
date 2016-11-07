/**


 * Created by jim on 2016/10/27.
 *
 */
(function ($, Vue) {
	var Home = function () {
	};

	Home.prototype.init = function () {
		var promise = this.getArticles();
		promise.then(
				function (articles) {
					Vue.component('article-item', {
						props: ['article'],
						template: '<li><img v-bind:src="article.background" width="200" height="300"><p>{{article.title}}</p></li>'
					});

					new Vue({
						data: {
							articles: articles
						},
						el: '#articles'
					});

					//wookmark
					options = {
						container: $('#articles'),
						offset: 10,
						itemWidth: 200
					};
					$('#articles li').wookmark(options);
				},
				function (errors) {

				}
		);
	};

	Home.prototype.getArticles = function () {
		var deferred = $.Deferred();
		$.ajax({
			url: $('meta[name="base"]').attr('content') + '/articles',
			dataType: 'json',
			type: 'GET',
			success: function (data) {
				deferred.resolve(data);
			},
			error: function (err) {
				deferred.reject(err);
			}
		});

		return deferred.promise();
	};

	var home = new Home();
	home.init();
})(jQuery, Vue);
