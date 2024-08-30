class Ratings {

  double? average;
  int? totalRatings;

  Ratings({
    this.average,
    this.totalRatings,
  });

  Ratings.fromJson(dynamic json) {
    average = json['average'];
    totalRatings = json['totalRatings'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['average'] = average;
    map['totalRatings'] = totalRatings;
    return map;
  }

  Ratings copyWith({
    double? average,
    int? totalRatings,
  }) => Ratings(
    average: average ?? this.average,
    totalRatings: totalRatings ?? this.totalRatings,
  );

  @override
  String toString() {
    return 'Ratings{average: $average, totalRatings: $totalRatings}';
  }
}