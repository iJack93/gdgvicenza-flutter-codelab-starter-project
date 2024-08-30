class PrepDuration {

  int? prepTime;
  int? cookTime;
  int? totalTime;
  String? unit;
  String? imageUrl;

  PrepDuration({
    this.prepTime,
    this.cookTime,
    this.totalTime,
    this.unit,
    this.imageUrl,
  });

  PrepDuration.fromJson(dynamic json) {
    prepTime = json['prepTime'];
    cookTime = json['cookTime'];
    totalTime = json['totalTime'];
    unit = json['unit'];
    imageUrl = json['imageUrl'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['prepTime'] = prepTime;
    map['cookTime'] = cookTime;
    map['totalTime'] = totalTime;
    map['unit'] = unit;
    map['imageUrl'] = imageUrl;
    return map;
  }

  PrepDuration copyWith({
    int? prepTime,
    int? cookTime,
    int? totalTime,
    String? unit,
    String? imageUrl,
  }) => PrepDuration(
    prepTime: prepTime ?? this.prepTime,
    cookTime: cookTime ?? this.cookTime,
    totalTime: totalTime ?? this.totalTime,
    unit: unit ?? this.unit,
    imageUrl: imageUrl ?? this.imageUrl,
  );

  @override
  String toString() {
    return 'PrepDuration{prepTime: $prepTime, cookTime: $cookTime, totalTime: $totalTime, unit: $unit, imageUrl: $imageUrl}';
  }
}