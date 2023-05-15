import 'package:flutter/material.dart';
import 'package:gride/constants/custom_theme.dart';
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
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: const AssetImage('assets/images/grid.png'),
          repeat: ImageRepeat.repeat,
          // invertColors: true,
          // scale: 4,
          // opacity: 0.1,
          colorFilter:
              ColorFilter.mode(CustomTheme.mainColor, BlendMode.dstATop),
        ),
      ),
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
