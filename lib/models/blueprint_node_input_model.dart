class BlueprintNodeInputModel {
  final String title;
  final String defaultValue;
  final String? description;
  BlueprintNodeInputModel({
    required this.title,
    required this.defaultValue,
    this.description,
  });

  BlueprintNodeInputModel copyWith({
    String? title,
    String? defaultValue,
    String? description,
  }) {
    return BlueprintNodeInputModel(
      title: title ?? this.title,
      defaultValue: defaultValue ?? this.defaultValue,
      description: description ?? this.description,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'defaultValue': defaultValue,
      'description': description,
    };
  }

  factory BlueprintNodeInputModel.fromMap(Map<String, dynamic> map) {
    return BlueprintNodeInputModel(
      title: map['title'] ?? '',
      defaultValue: map['defaultValue'] ?? '',
      description: map['description'],
    );
  }

  @override
  String toString() =>
      'BlueprintNodeInputModel(title: $title, defaultValue: $defaultValue, description: $description)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is BlueprintNodeInputModel &&
        other.title == title &&
        other.defaultValue == defaultValue &&
        other.description == description;
  }

  @override
  int get hashCode =>
      title.hashCode ^ defaultValue.hashCode ^ description.hashCode;
}
