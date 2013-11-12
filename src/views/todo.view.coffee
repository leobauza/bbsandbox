$ ->
	class App.Views.Todo extends Backbone.View
		tagName: 'li'
		template: Mustache.compile '{{ description }}'
		render: ->
			@$el.html @template @model.attributes
			@

