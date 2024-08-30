class Ingredient {

  String? quantity;
  String? unit;
  String? ingredientName;

  Ingredient({
    this.quantity,
    this.unit,
    this.ingredientName,
  });

  Ingredient.fromJson(dynamic json) {
    quantity = json['quantity'];
    unit = json['unit'];
    ingredientName = json['ingredientName'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['quantity'] = quantity;
    map['unit'] = unit;
    map['ingredientName'] = ingredientName;
    return map;
  }

  Ingredient copyWith({
    String? quantity,
    String? unit,
    String? ingredientName,
  }) => Ingredient(
    quantity: quantity ?? this.quantity,
    unit: unit ?? this.unit,
    ingredientName: ingredientName ?? this.ingredientName,
  );

  @override
  String toString() {
    return 'Ingredient{quantity: $quantity, unit: $unit, ingredientName: $ingredientName}';
  }
}