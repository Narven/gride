import 'package:flutter/foundation.dart';
import 'package:gride/constants/enums.dart';
import 'package:gride/models/blueprint_node_input_model.dart';
import 'package:gride/models/blueprint_node_output_model.dart';

class BlueprintNodeModel {
  final String title;

  /// Programming Language it refers to
  final Language language;

  /// Type of node if is a variable, function or connector
  final BlueprintNodeModelType type;

  /// Locks for prevent of change (usually for core nodes)
  final bool locked;

  /// X position on the whiteboard
  final double xPos;

  /// Y position on the whiteboard
  final double yPos;

  /// List of all inputs for this node
  final List<BlueprintNodeInputModel> inputs;

  /// List of all inputs for this node
  final List<BlueprintNodeOutputModel>? outputs;

  /// Parent node where this is connect from (where it receives line order)
  final BlueprintNodeModel? from;

  /// Parent node where this is connect to (where it receives line order)
  final BlueprintNodeModel? to;

  /// Some doc description for the variable/function/connector
  final String? docDescription;

  /// Some doc url description for the variable/function/connector
  final String? urlDocReference;
  BlueprintNodeModel({
    required this.title,
    required this.language,
    required this.type,
    required this.locked,
    required this.xPos,
    required this.yPos,
    required this.inputs,
    this.outputs,
    this.from,
    this.to,
    this.docDescription,
    this.urlDocReference,
  });

  BlueprintNodeModel copyWith({
    String? title,
    Language? language,
    BlueprintNodeModelType? type,
    bool? locked,
    double? xPos,
    double? yPos,
    List<BlueprintNodeInputModel>? inputs,
    List<BlueprintNodeOutputModel>? output,
    BlueprintNodeModel? from,
    BlueprintNodeModel? to,
    String? docDescription,
    String? urlDocReference,
  }) {
    return BlueprintNodeModel(
      title: title ?? this.title,
      language: language ?? this.language,
      type: type ?? this.type,
      locked: locked ?? this.locked,
      xPos: xPos ?? this.xPos,
      yPos: yPos ?? this.yPos,
      inputs: inputs ?? this.inputs,
      outputs: output ?? this.outputs,
      from: from ?? this.from,
      to: to ?? this.to,
      docDescription: docDescription ?? this.docDescription,
      urlDocReference: urlDocReference ?? this.urlDocReference,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'language': language,
      'type': type,
      'locked': locked,
      'xPos': xPos,
      'yPos': yPos,
      'inputs': [], // inputs.map((x) => x.toMap()).toList(),
      'output': [], // output?.toMap(),
      'from': from?.toMap(),
      'to': to?.toMap(),
      'docDescription': docDescription,
      'urlDocReference': urlDocReference,
    };
  }

  factory BlueprintNodeModel.fromMap(Map<String, dynamic> map) {
    return BlueprintNodeModel(
      title: map['title'] ?? '',
      language: map['language'],
      type: map['type'],
      locked: map['locked'] ?? false,
      xPos: map['xPos']?.toDouble() ?? 0.0,
      yPos: map['yPos']?.toDouble() ?? 0.0,
      inputs: map['inputs'],
      outputs: map['output'],
      from:
          map['from'] != null ? BlueprintNodeModel.fromMap(map['from']) : null,
      to: map['to'] != null ? BlueprintNodeModel.fromMap(map['to']) : null,
      docDescription: map['docDescription'],
      urlDocReference: map['urlDocReference'],
    );
  }

  @override
  String toString() {
    return 'BlueprintNodeModel(title: $title, language: $language, type: $type, locked: $locked, xPos: $xPos, yPos: $yPos, inputs: $inputs, output: $outputs, from: $from, to: $to, docDescription: $docDescription, urlDocReference: $urlDocReference)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is BlueprintNodeModel &&
        other.title == title &&
        other.language == language &&
        other.type == type &&
        other.locked == locked &&
        other.xPos == xPos &&
        other.yPos == yPos &&
        listEquals(other.inputs, inputs) &&
        other.outputs == outputs &&
        other.from == from &&
        other.to == to &&
        other.docDescription == docDescription &&
        other.urlDocReference == urlDocReference;
  }

  @override
  int get hashCode {
    return title.hashCode ^
        language.hashCode ^
        type.hashCode ^
        locked.hashCode ^
        xPos.hashCode ^
        yPos.hashCode ^
        inputs.hashCode ^
        outputs.hashCode ^
        from.hashCode ^
        to.hashCode ^
        docDescription.hashCode ^
        urlDocReference.hashCode;
  }
}
