///**


// * Created by jim on 2016/10/27.
// *
// */
//(function($, Vue){
//	var Home = function(){};
//
//	Home.prototype.init = function(){
//		var promise = this.getArticles();
//		promise.then(
//				function(articles){
//					new Vue({
//						el: '.articles',
//						data: articles
//					});
//
//
//				},
//				function(errors){
//
//				}
//		);
//	};
//
//	Home.prototype.getArticles = function(){
//		var deferred = $.Deferred();
//		$.ajax({
//			url: $('meta[name="base"]') + '/articles/',
//			type: 'json',
//			method: 'GET',
//			success: function(data){
//				deferred.resolve(data);
//			},
//			error: function(err){
//				deferred.reject(err);
//			}
//		});
//
//		return deferred.promise();
//	};
//
//	var home = new Home();
//	home.init();
//})(jQuery, Vue);

require('./bootstrap');

/**
 * Next, we will create a fresh Vue application instance and attach it to
 * the body of the page. From here, you may begin adding components to
 * the application, or feel free to tweak this setup for your needs.
 */

Vue.component('article', require('./components/Home.vue'));

const app = new Vue({
	el: '#articles',
	data: article.then(
			function(articles){
				return articles;
			},
			function(errors){
				return errors;
			}
	)
});