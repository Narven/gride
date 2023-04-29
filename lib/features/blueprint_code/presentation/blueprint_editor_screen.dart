import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gride/constants/custom_theme.dart';
import 'package:gride/constants/enums.dart';
import 'package:gride/features/blueprint_code/widgets/node_editor2.dart';
import 'package:gride/features/blueprint_code/widgets/panel.dart';
import 'package:gride/features/blueprint_code/widgets/properties_explorer.dart';
import 'package:gride/features/blueprint_code/widgets/resource_explorer.dart';
import 'package:gride/features/blueprint_code/widgets/toolbar.dart';
import 'package:gride/models/blueprint_node_input_model.dart';
import 'package:gride/models/blueprint_node_model.dart';
import 'package:gride/models/blueprint_node_output_model.dart';

class BlueprintEditorScreen extends ConsumerStatefulWidget {
  const BlueprintEditorScreen({super.key});

  @override
  ConsumerState<BlueprintEditorScreen> createState() =>
      _BlueprintCodeScreenState();
}

class _BlueprintCodeScreenState extends ConsumerState<BlueprintEditorScreen> {
  bool isOpen = true;
  List<BlueprintNodeModel> nodes = [];

  @override
  void initState() {
    super.initState();

    nodes.add(
      BlueprintNodeModel(
        title: 'totalPriceCalculator',
        language: Language.typescript,
        type: BlueprintNodeModelType.function,
        locked: false,
        xPos: 400,
        yPos: 200,
        inputs: [
          BlueprintNodeInputModel(title: 'amount', defaultValue: '0'),
          BlueprintNodeInputModel(title: 'price', defaultValue: '0.0'),
        ],
        outputs: [
          BlueprintNodeOutputModel(title: 'result', defaultValue: '0.0'),
        ],
      ),
    );
    nodes.add(
      BlueprintNodeModel(
        title: 'World',
        language: Language.typescript,
        type: BlueprintNodeModelType.function,
        locked: false,
        xPos: 600,
        yPos: 400,
        inputs: [],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF202428),
      body: Stack(
        children: [
          // Current Page Editor
          isOpen ? NodeEditor2(nodes: nodes) : const SizedBox(),
          // Current Page Panels
          Padding(
            padding: const EdgeInsets.only(top: 32.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 2.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Left column
                        Column(
                          children: const [
                            ResourceExplorer(),
                            Panel(title: 'Changed Resources'),
                          ],
                        ),
                        // Middle bar.. .current file selected info
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: SizedBox(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 4.0,
                                  vertical: 2.0,
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        color: CustomTheme.hightlightColor,
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(3),
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 10,
                                          vertical: 2,
                                        ),
                                        child: Text(
                                          'file1.ts',
                                          style: CustomTheme.appDefaultTextStyle
                                              .copyWith(
                                            color: CustomTheme.hightlightColor,
                                            fontSize: 5.sp,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Column(
                          children: const [
                            PropertiesExplorer(),
                            Panel(title: 'Outline'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          const Toolbar(),
        ],
      ),
    );
  }
}
