class Calories {

  int? cal;
  String? unit;
  String? imageUrl;

  Calories({
    this.cal,
    this.unit,
    this.imageUrl,
  });

  Calories.fromJson(dynamic json) {
    cal = json['cal'];
    unit = json['unit'];
    imageUrl = json['imageUrl'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['cal'] = cal;
    map['unit'] = unit;
    map['imageUrl'] = imageUrl;
    return map;
  }

  Calories copyWith({
    int? cal,
    String? unit,
    String? imageUrl,
  }) => Calories(
    cal: cal ?? this.cal,
    unit: unit ?? this.unit,
    imageUrl: imageUrl ?? this.imageUrl,
  );

  @override
  String toString() {
    return 'Calories{cal: $cal, unit: $unit, imageUrl: $imageUrl}';
  }
}