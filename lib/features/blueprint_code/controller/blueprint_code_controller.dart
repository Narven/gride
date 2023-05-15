import 'package:flutter_riverpod/flutter_riverpod.dart';

class BlueprintCodeController extends StateNotifier<bool> {
  BlueprintCodeController({
    required Ref ref,
  })  : _ref = ref,
        super(false);

  final Ref _ref;

  // Stream<List<String>> getFiles(String path) {
  //   //
  // }
}
