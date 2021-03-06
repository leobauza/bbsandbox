// Generated by CoffeeScript 1.6.3
(function() {
  var __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  $(function() {
    var _ref;
    return App.Views.Todos = (function(_super) {
      __extends(Todos, _super);

      function Todos() {
        _ref = Todos.__super__.constructor.apply(this, arguments);
        return _ref;
      }

      Todos.prototype.el = '.main ul';

      Todos.prototype.render = function() {
        var _this = this;
        this.collection.forEach(function(model) {
          return _this.$el.append(new App.Views.Todo({
            model: model
          }).render().el);
        });
        return this;
      };

      return Todos;

    })(Backbone.View);
  });

}).call(this);
