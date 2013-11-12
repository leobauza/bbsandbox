$ ->
	class App.Views.Categories extends Backbone.View
		el: '.sidebar ul'
		render: ->
			@collection.forEach @addOne, @
			@
		addOne: (category) ->
			categoryView = new App.Views.Category({ model: category })
			@$el.append categoryView.render().el
