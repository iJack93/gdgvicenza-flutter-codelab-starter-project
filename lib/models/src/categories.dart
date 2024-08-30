import 'package:gdgvicenza_flutter_codelab/models/src/category.dart';

class Categories {

  List<RecipeCategory>? categories;

  Categories({
    this.categories,
  });

  Categories.fromJson(dynamic json) {
    if (json['categories'] != null) {
      categories = [];
      json['categories'].forEach((v) {
        categories?.add(RecipeCategory.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (categories != null) {
      map['categories'] = categories?.map((v) => v.toJson()).toList();
    }
    return map;
  }

  Categories copyWith({
    List<RecipeCategory>? categories,
  }) => Categories(
    categories: categories ?? this.categories,
  );

  @override
  String toString() {
    return 'Categories{categories: $categories}';
  }
}