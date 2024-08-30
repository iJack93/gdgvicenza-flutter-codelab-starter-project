class Direction {

  int? stepNumber;
  String? instruction;

  Direction({
    this.stepNumber,
    this.instruction,
  });

  Direction.fromJson(dynamic json) {
    stepNumber = json['stepNumber'];
    instruction = json['instruction'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['stepNumber'] = stepNumber;
    map['instruction'] = instruction;
    return map;
  }

  Direction copyWith({
    int? stepNumber,
    String? instruction,
  }) => Direction(
    stepNumber: stepNumber ?? this.stepNumber,
    instruction: instruction ?? this.instruction,
  );

  @override
  String toString() {
    return 'Direction{stepNumber: $stepNumber, instruction: $instruction}';
  }
}