import 'dart:developer';

import 'package:code_editor/code_editor.dart';
import 'package:flutter/material.dart';

class NodeEditor extends StatefulWidget {
  const NodeEditor({super.key});

  @override
  State<NodeEditor> createState() => _NodeEditorState();
}

class _NodeEditorState extends State<NodeEditor> {
  late TextEditingController myController;
  late EditorModel model;
  late List<FileEditor> files;

  @override
  void initState() {
    super.initState();
    myController = TextEditingController(text: 'hello!');

    List<String> contentOfPage1 = [
      "let result = foo();",
    ];

    files = [
      // FileEditor(
      //   name: "main.rs",
      //   language: "rust",
      //   code: contentOfPage1.join("\n"), // [code] needs a string
      // ),
      FileEditor(
        name: "index.js",
        language: "javascript",
        code: contentOfPage1.join("\n"),
      ),
      // FileEditor(
      //   name: "main.py",
      //   language: "python",
      //   code: "def main():",
      // ),
    ];

    model = EditorModel(
      files: files, // the files created above
      styleOptions: EditorModelStyleOptions(
        fontSize: 15,
        heightOfContainer: MediaQuery.of(context).size.height - 130,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CodeEditor(
      model: model,
      edit: true,
      disableNavigationbar: false,
      onSubmit: (String? language, String? value) {
        log(language.toString());
        log(value.toString());
      },
      textEditingController: myController,
    );
  }
}
