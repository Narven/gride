import 'package:flutter/material.dart';
import 'package:gride/models/blueprint_node_input_model.dart';
import 'package:gride/models/blueprint_node_output_model.dart';

class NodeOutput extends StatelessWidget {
  const NodeOutput({
    super.key,
    required this.data,
  });

  final BlueprintNodeOutputModel data;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      horizontalTitleGap: 5,
      trailing: const Icon(
        Icons.arrow_right,
        color: Colors.white,
      ),
      minLeadingWidth: 0,
      dense: true,
      visualDensity: const VisualDensity(horizontal: 0, vertical: 0),
      contentPadding: const EdgeInsets.all(0),
      title: Align(
        alignment: const Alignment(0, 0),
        child: Text(
          data.title,
          textAlign: TextAlign.right,
        ),
      ),
    );
  }
}
