import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

final cardsProvider = StateProvider<List<String>>((ref) {
  return [
    "示例卡片1",
    "示例卡片2",
  ];
});
