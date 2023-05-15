import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gride/constants/custom_theme.dart';
import 'package:sizer/sizer.dart';

class TableCellInputText extends StatefulWidget {
  const TableCellInputText({super.key, this.value});

  final dynamic value;

  @override
  State<TableCellInputText> createState() => _TableCellInputTextState();
}

class _TableCellInputTextState extends State<TableCellInputText> {
  late TextEditingController textController;

  @override
  void initState() {
    textController = TextEditingController(text: widget.value.toString());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TableCell(
      verticalAlignment: TableCellVerticalAlignment.fill,
      child: TextField(
        controller: textController,
        maxLines: 1,
        decoration: InputDecoration(
          alignLabelWithHint: true,
          isDense: true,
          labelStyle: CustomTheme.appDefaultTextStyle.copyWith(
            fontSize: kIsWeb ? 3.sp : 4.sp,
          ),
          hintStyle: CustomTheme.appDefaultTextStyle.copyWith(
            fontSize: kIsWeb ? 3.sp : 4.sp,
          ),
          contentPadding: EdgeInsets.only(
            top: 0,
            bottom: 0,
            left: 1.w,
            right: 1.w,
          ),
          filled: true,
          fillColor: CustomTheme.mainColor,
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              width: 0,
              color: Colors.transparent,
            ),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              width: 0,
              color: Colors.transparent,
            ),
          ),
          border: const OutlineInputBorder(gapPadding: 0),
        ),
        style: CustomTheme.appDefaultTextStyle.copyWith(
          fontSize: kIsWeb ? 3.sp : 4.sp,
        ),
      ),
    );
  }
}
