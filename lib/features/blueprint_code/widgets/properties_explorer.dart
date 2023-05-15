import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gride/constants/custom_theme.dart';
import 'package:gride/features/blueprint_code/widgets/panel.dart';
import 'package:gride/features/blueprint_code/widgets/table_cell_input_text.dart';
import 'package:sizer/sizer.dart';

class PropertiesExplorer extends StatefulWidget {
  const PropertiesExplorer({super.key});

  @override
  State<PropertiesExplorer> createState() => _PropertiesExplorerState();
}

class _PropertiesExplorerState extends State<PropertiesExplorer> {
  List<Map<String, dynamic>> properties = [];

  @override
  void initState() {
    super.initState();
    properties
      ..add({'mass': 100})
      ..add({'velocity': 100})
      ..add({'color': Colors.amber.toString()});
  }

  @override
  Widget build(BuildContext context) {
    return Panel(
      title: 'PROPERTIES',
      icon: Icons.view_list_outlined,
      actions: const [],
      child: Table(
        border: TableBorder.symmetric(
            inside: BorderSide(
              width: 1,
              color: CustomTheme.textColor,
            ),
            outside: BorderSide.none),
        children: [
          for (var item in properties)
            TableRow(
              children: [
                TableCell(
                  child: Text(
                    item.keys.first,
                    style: CustomTheme.appDefaultTextStyle.copyWith(
                      fontSize: kIsWeb ? 3.sp : 4.sp,
                    ),
                  ),
                ),
                TableCellInputText(value: item.values.first),
              ],
            ),
        ],
      ),
    );
  }
}
