$ ->
	class App.Views.Category extends Backbone.View
		template: Mustache.compile '<li>{{ name }}</li>'
		render: ->
			@setElement @template @model.attributes
			@

