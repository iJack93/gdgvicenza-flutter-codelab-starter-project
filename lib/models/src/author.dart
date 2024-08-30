class Author {

  String? name;
  String? profileUrl;

  Author({
    this.name,
    this.profileUrl,
  });

  Author.fromJson(dynamic json) {
    name = json['name'];
    profileUrl = json['profileUrl'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['profileUrl'] = profileUrl;
    return map;
  }

  Author copyWith({
    String? name,
    String? profileUrl,
  }) => Author(
    name: name ?? this.name,
    profileUrl: profileUrl ?? this.profileUrl,
  );

  @override
  String toString() {
    return 'Author{name: $name, profileUrl: $profileUrl}';
  }
}