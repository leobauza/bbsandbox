$ ->
	class App.Views.Todos extends Backbone.View
		el: '.main ul'
		render: ->
			@collection.forEach (model) => @$el.append new App.Views.Todo(model: model).render().el
			@

