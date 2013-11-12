$ ->
	class App.Models.Category extends Backbone.Model
		urlRoot: '/api/categories'
		initialize: ->
			@.todos = new App.Collections.Todos [], { category: @ }
			@.todosView = new App.Views.Todos { collection: @.todos, catId: @.id }
		getTodos: ->
			@todos.fetch =>
				success: (results) =>
					$('.page ul').empty()
					this.todosView.render()
				error: ->
					console.log "error"
