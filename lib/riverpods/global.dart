import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

final appTitleProvider = Provider<String>((ref) {
  return 'Hello world';
});
