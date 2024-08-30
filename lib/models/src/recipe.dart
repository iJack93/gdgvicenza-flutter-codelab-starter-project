import 'difficulty.dart';
import 'prep_duration.dart';
import 'ratings.dart';
import 'servings.dart';
import 'author.dart';
import 'calories.dart';
import 'category.dart';
import 'direction.dart';
import 'ingredient.dart';

class Recipe {

  String? id;
  String? name;
  RecipeCategory? category;
  String? cuisine;
  String? imageUrl;
  Ratings? ratings;
  PrepDuration? duration;
  Servings? servings;
  Calories? calories;
  Difficulty? difficulty;
  List<Ingredient>? ingredients;
  List<Direction>? directions;
  List<String>? tags;
  Author? author;

  Recipe({
    this.id,
    this.name,
    this.category,
    this.cuisine,
    this.imageUrl,
    this.ratings,
    this.duration,
    this.servings,
    this.calories,
    this.difficulty,
    this.ingredients,
    this.directions,
    this.tags,
    this.author,
  });

  Recipe.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    category = json['category'] != null ? RecipeCategory.fromJson(json['category']) : null;;
    cuisine = json['cuisine'];
    imageUrl = json['imageUrl'];
    ratings = json['ratings'] != null ? Ratings.fromJson(json['ratings']) : null;
    duration = json['duration'] != null ? PrepDuration.fromJson(json['duration']) : null;
    servings = json['servings'] != null ? Servings.fromJson(json['servings']) : null;
    calories = json['calories'] != null ? Calories.fromJson(json['calories']) : null;
    difficulty = json['difficulty'] != null ? Difficulty.fromJson(json['difficulty']) : null;
    if (json['ingredients'] != null) {
      ingredients = [];
      json['ingredients'].forEach((v) {
        ingredients?.add(Ingredient.fromJson(v));
      });
    }
    if (json['directions'] != null) {
      directions = [];
      json['directions'].forEach((v) {
        directions?.add(Direction.fromJson(v));
      });
    }
    tags = json['tags'] != null ? json['tags'].cast<String>() : [];
    author = json['author'] != null ? Author.fromJson(json['author']) : null;
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    if(category != null) {
      map['category'] = category?.toJson();
    }
    map['cuisine'] = cuisine;
    map['imageUrl'] = imageUrl;
    if (ratings != null) {
      map['ratings'] = ratings?.toJson();
    }
    if (duration != null) {
      map['duration'] = duration?.toJson();
    }
    if (servings != null) {
      map['servings'] = servings?.toJson();
    }
    if (calories != null) {
      map['calories'] = calories?.toJson();
    }
    if (difficulty != null) {
      map['difficulty'] = difficulty?.toJson();
    }
    if (ingredients != null) {
      map['ingredients'] = ingredients?.map((v) => v.toJson()).toList();
    }
    if (directions != null) {
      map['directions'] = directions?.map((v) => v.toJson()).toList();
    }
    map['tags'] = tags;
    if (author != null) {
      map['author'] = author?.toJson();
    }
    return map;
  }

  Recipe copyWith({
    String? id,
    String? name,
    RecipeCategory? category,
    String? cuisine,
    String? imageUrl,
    Ratings? ratings,
    PrepDuration? duration,
    Servings? servings,
    Calories? calories,
    Difficulty? difficulty,
    List<Ingredient>? ingredients,
    List<Direction>? directions,
    List<String>? tags,
    Author? author,
  }) => Recipe(
    id: id ?? this.id,
    name: name ?? this.name,
    category: category ?? this.category,
    cuisine: cuisine ?? this.cuisine,
    imageUrl: imageUrl ?? this.imageUrl,
    ratings: ratings ?? this.ratings,
    duration: duration ?? this.duration,
    servings: servings ?? this.servings,
    calories: calories ?? this.calories,
    difficulty: difficulty ?? this.difficulty,
    ingredients: ingredients ?? this.ingredients,
    directions: directions ?? this.directions,
    tags: tags ?? this.tags,
    author: author ?? this.author,
  );

  @override
  String toString() {
    return 'Recipe{id: $id, name: $name, category: $category, cuisine: $cuisine, imageUrl: $imageUrl, ratings: $ratings, duration: $duration, servings: $servings, calories: $calories, difficulty: $difficulty, ingredients: $ingredients, directions: $directions, tags: $tags, author: $author}';
  }
}