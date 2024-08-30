class RecipeCategory {

  String? id;
  String? name;
  String? imageUrl;

  RecipeCategory({
    this.id,
    this.name,
    this.imageUrl,
  });

  RecipeCategory.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    imageUrl = json['imageUrl'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['imageUrl'] = imageUrl;
    return map;
  }

  RecipeCategory copyWith({
    String? id,
    String? name,
    String? imageUrl,
  }) => RecipeCategory(
    id: id ?? this.id,
    name: name ?? this.name,
    imageUrl: imageUrl ?? this.imageUrl,
  );

  @override
  String toString() {
    return 'RecipeCategory{id: $id, name: $name, imageUrl: $imageUrl}';
  }
}