import 'recipe.dart';

class Recipes {

  List<Recipe>? recipes;

  Recipes({
    this.recipes,
  });

  Recipes.fromJson(dynamic json) {
    if (json['recipes'] != null) {
      recipes = [];
      json['recipes'].forEach((v) {
        recipes?.add(Recipe.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (recipes != null) {
      map['recipes'] = recipes?.map((v) => v.toJson()).toList();
    }
    return map;
  }

  Recipes copyWith({
    List<Recipe>? recipes,
  }) => Recipes(
    recipes: recipes ?? this.recipes,
  );

  @override
  String toString() {
    return 'Recipes{recipes: $recipes}';
  }
}









