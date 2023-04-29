import 'package:flutter/material.dart';
import 'package:gride/features/blueprint_code/widgets/node_input.dart';
import 'package:gride/features/blueprint_code/widgets/node_main_connector.dart';
import 'package:gride/features/blueprint_code/widgets/node_output.dart';
import 'package:gride/models/blueprint_node_model.dart';

@immutable
class Node extends StatefulWidget {
  const Node({
    super.key,
    required this.data,
  });

  final BlueprintNodeModel data;

  @override
  State<Node> createState() => _NodeState();
}

class _NodeState extends State<Node> {
  var xPos = 0.0;
  var yPos = 0.0;
  final width = 100.0;
  final height = 100.0;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: widget.data.xPos,
      top: widget.data.yPos,
      width: 230,
      height: 180,
      child: Draggable(
        onDragUpdate: (dragDetails) {
          setState(() {
            // // print(dragDetails.offset);
            // yPos = dragDetails.globalPosition.dy - 90 / 2;
            // xPos = dragDetails.globalPosition.dx - 230 / 2;
          });
        },
        childWhenDragging: Container(
          decoration: BoxDecoration(
            color: Colors.white.withAlpha(100),
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        feedback: const Icon(
          Icons.mouse,
          color: Colors.red,
          size: 12,
        ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blue[600],
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black38,
                      blurRadius: 3.0,
                      offset: Offset(2.0, 3.0),
                    ),
                  ],
                  border: Border.all(
                    color: Colors.white,
                  ),
                  // gradient: const LinearGradient(
                  //   begin: Alignment.topCenter,
                  //   end: Alignment.bottomCenter,
                  //   colors: [
                  //     Color.fromRGBO(38, 48, 68, 1),
                  //     Color.fromRGBO(20, 20, 20, 1),
                  //   ],
                  // ),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(6),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            FittedBox(
                              child: Text(
                                widget.data.title,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13,
                                ),
                              ),
                            ),
                            const FittedBox(
                              child: Text(
                                'XXXX',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 1),
                      Flexible(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: ListView.builder(
                                itemCount: widget.data.inputs.length,
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                padding: const EdgeInsets.all(0),
                                itemBuilder: (context, index) {
                                  final input = widget.data.inputs[index];
                                  return NodeInput(data: input);
                                },
                              ),
                            ),
                            Expanded(
                              child: widget.data.outputs != null
                                  ? ListView.builder(
                                      itemCount: widget.data.outputs!.length,
                                      shrinkWrap: true,
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      padding: const EdgeInsets.all(0),
                                      itemBuilder: (context, index) {
                                        final output =
                                            widget.data.outputs![index];
                                        return NodeOutput(data: output);
                                      },
                                    )
                                  : const SizedBox(),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const NodeMainConnector(),
            const NodeMainConnector(isLeft: false),
          ],
        ),
      ),
    );
  }
}
