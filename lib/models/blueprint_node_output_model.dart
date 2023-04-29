class BlueprintNodeOutputModel {
  final String title;
  final String defaultValue;
  BlueprintNodeOutputModel({
    required this.title,
    required this.defaultValue,
  });

  BlueprintNodeOutputModel copyWith({
    String? title,
    String? defaultValue,
  }) {
    return BlueprintNodeOutputModel(
      title: title ?? this.title,
      defaultValue: defaultValue ?? this.defaultValue,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'defaultValue': defaultValue,
    };
  }

  factory BlueprintNodeOutputModel.fromMap(Map<String, dynamic> map) {
    return BlueprintNodeOutputModel(
      title: map['title'] ?? '',
      defaultValue: map['defaultValue'] ?? '',
    );
  }

  @override
  String toString() =>
      'BlueprintNodeOutputModel(title: $title, defaultValue: $defaultValue)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is BlueprintNodeOutputModel &&
        other.title == title &&
        other.defaultValue == defaultValue;
  }

  @override
  int get hashCode => title.hashCode ^ defaultValue.hashCode;
}
