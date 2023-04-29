import 'package:flutter/material.dart';
import 'package:gride/features/blueprint_code/widgets/node.dart';
import 'package:gride/models/blueprint_node_model.dart';

class NodeEditor2 extends StatelessWidget {
  const NodeEditor2({
    super.key,
    required this.nodes,
  });

  final List<BlueprintNodeModel> nodes;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          for (final node in nodes) Node(data: node),
        ],
      ),
    );
  }
}
