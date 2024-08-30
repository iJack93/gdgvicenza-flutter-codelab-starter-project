class Difficulty {

  String? level;
  String? unit;
  String? imageUrl;

  Difficulty({
    this.level,
    this.unit,
    this.imageUrl,
  });

  Difficulty.fromJson(dynamic json) {
    level = json['level'];
    unit = json['unit'];
    imageUrl = json['imageUrl'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['level'] = level;
    map['unit'] = unit;
    map['imageUrl'] = imageUrl;
    return map;
  }

  Difficulty copyWith({
    String? level,
    String? unit,
    String? imageUrl,
  }) => Difficulty(
    level: level ?? this.level,
    unit: level ?? this.unit,
    imageUrl: imageUrl ?? this.imageUrl,
  );

  @override
  String toString() {
    return 'Difficulty{level: $level, unit: $unit, imageUrl: $imageUrl}';
  }
}