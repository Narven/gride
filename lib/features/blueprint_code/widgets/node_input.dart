import 'package:flutter/material.dart';
import 'package:gride/models/blueprint_node_input_model.dart';

class NodeInput extends StatelessWidget {
  const NodeInput({
    super.key,
    required this.data,
  });

  final BlueprintNodeInputModel data;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      horizontalTitleGap: 5,
      leading: const Icon(
        Icons.arrow_right,
        color: Colors.white,
        // size: 20,
      ),
      minLeadingWidth: 0,
      dense: true,
      visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
      contentPadding: const EdgeInsets.all(0),
      title: Align(
        alignment: const Alignment(-1.2, 0),
        child: Text(data.title),
      ),
    );
  }
}
