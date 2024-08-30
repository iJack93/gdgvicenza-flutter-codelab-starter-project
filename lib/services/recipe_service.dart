import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:gdgvicenza_flutter_codelab/models/models.dart' show Categories, Recipe, RecipeCategory, Recipes;
import 'package:http/http.dart' as http;

class RecipeService {
  //singleton variables
  RecipeService._();
  static final RecipeService shared = RecipeService._();

  //default singleton factory constructor
  factory RecipeService() {
    return shared;
  }

  Future<List<RecipeCategory>> getCategories() async {
    List<RecipeCategory> recipes = [];
    final uri = Uri.parse("https://firebasestorage.googleapis.com/v0/b/gdgvicenza-flutter-codelab.appspot.com/o/data%2Fcategories.json?alt=media&token=61fbc88e-4d1b-4022-9d8c-070b2c8212ae");
    try {
      final response = await http.get(uri);
      if(response.statusCode == 200) {
        final Map<String, dynamic> json = jsonDecode(utf8.decode(response.bodyBytes));
        recipes = Categories.fromJson(json).categories!;
      }
      return recipes;
    } catch (e) {
      debugPrint('Error fetching data: $e');
      return [];
    }
  }

  Future<List<Recipe>> getRecipes() async {
    List<Recipe> recipes = [];
    final uri = Uri.parse("https://firebasestorage.googleapis.com/v0/b/gdgvicenza-flutter-codelab.appspot.com/o/data%2Frecipes.json?alt=media&token=55a81564-307d-4685-8b6c-be3ab7233a89");
    try {
      final response = await http.get(uri);
      if(response.statusCode == 200) {
        final Map<String, dynamic> json = jsonDecode(utf8.decode(response.bodyBytes));
        recipes = Recipes.fromJson(json).recipes!;
      }
      return recipes;
    } catch (e) {
      debugPrint('Error fetching data: $e');
      return [];
    }
  }

}