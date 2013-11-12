$ ->
	todos = new App.Collections.Todos
	todosView = new App.Views.Todos collection: todos

	categories = new App.Collections.Categories
	categoriesView = new App.Views.Categories collection: categories


	categories.fetch {
		success: (response) ->
			categoriesView.render()
	}
	todos.fetch {
		success: (response) ->
			todosView.render()
	}

