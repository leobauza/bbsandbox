$ ->
	class App.Collections.Categories extends Backbone.Collection
		model: App.Models.Category
		url: '/api/categories'
