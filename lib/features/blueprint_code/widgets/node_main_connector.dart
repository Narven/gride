import 'package:flutter/material.dart';

class NodeMainConnector extends StatelessWidget {
  const NodeMainConnector({super.key, this.isLeft = true});

  final bool isLeft;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: isLeft ? null : 0,
      left: isLeft ? 0 : null,
      top: 14,
      child: Container(
        clipBehavior: Clip.none,
        height: 20,
        width: 8,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: isLeft
              ? const BorderRadius.only(
                  bottomLeft: Radius.circular(2),
                  topLeft: Radius.circular(2),
                )
              : const BorderRadius.only(
                  bottomRight: Radius.circular(2),
                  topRight: Radius.circular(2),
                ),
        ),
      ),
    );
  }
}
