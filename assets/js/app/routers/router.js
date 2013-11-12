// Generated by CoffeeScript 1.6.3
(function() {
  $(function() {
    var categories, categoriesView, todos, todosView;
    todos = new App.Collections.Todos;
    todosView = new App.Views.Todos({
      collection: todos
    });
    categories = new App.Collections.Categories;
    categoriesView = new App.Views.Categories({
      collection: categories
    });
    categories.fetch({
      success: function(response) {
        return categoriesView.render();
      }
    });
    return todos.fetch({
      success: function(response) {
        return todosView.render();
      }
    });
  });

}).call(this);