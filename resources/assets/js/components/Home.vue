<template>
	<ul class="articles">
		<li v-for="article in articles">
			<img src="{{ article.background }}" alt="" />
		</li>
	</ul>
</template>

<script>
	export default {
		data() {
			return {
				articles: function(){
					var deferred = $.Deferred();
					$.ajax({
						url: $('meta[name="base"]') + '/articles/',
						type: 'json',
						method: 'GET',
						success: function(data){
							deferred.resolve(data);
						},
						error: function(err){
							deferred.reject(err);
						}
					});

					return deferred.promise();
				}
			}
		}
	}
</script>