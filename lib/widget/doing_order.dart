import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tts/flutter_tts.dart';

class DoingOrderList extends ConsumerWidget {
  DoingOrderList({
    super.key,
  });

  Future<void> _speak() async {
    final FlutterTts flutterTts = FlutterTts();
    String str = '测试自动播放语音';
    // List<dynamic> languages = await flutterTts.getLanguages;
    try {
      await flutterTts.setLanguage("zh-CN"); // 设置语言为中文
      await flutterTts.setPitch(1);
      await flutterTts.setSpeechRate(0.8);
      await flutterTts.speak(str);
      print('speak success');
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.amber,
            child: Column(
              children: [
                Text('Order 1'),
                Text('Order 2'),
                Text('Order 3'),
                ElevatedButton(
                  onPressed: _speak,
                  child: Text('Speak Test'),
                ),
              ],
            ),
          ),
        ),
        Expanded(child: Container(color: Colors.blue)),
      ],
    );
  }
}
