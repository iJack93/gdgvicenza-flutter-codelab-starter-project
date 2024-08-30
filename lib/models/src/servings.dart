class Servings {

  int? servingsNumber;
  String? unit;
  String? imageUrl;

  Servings({
    this.servingsNumber,
    this.unit,
    this.imageUrl,
  });

  Servings.fromJson(dynamic json) {
    servingsNumber = json['servingsNumber'];
    unit = json['unit'];
    imageUrl = json['imageUrl'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['servingsNumber'] = servingsNumber;
    map['unit'] = unit;
    map['imageUrl'] = imageUrl;
    return map;
  }

  Servings copyWith({
    int? servingsNumber,
    String? unit,
    String? imageUrl,
  }) => Servings(
    servingsNumber: servingsNumber ?? this.servingsNumber,
    unit: unit ?? this.unit,
    imageUrl: imageUrl ?? this.imageUrl,
  );

  @override
  String toString() {
    return 'Servings{servingsNumber: $servingsNumber, unit: $unit, imageUrl: $imageUrl}';
  }
}