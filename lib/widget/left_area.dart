import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../riverpods/test.dart';

class LeftContainer extends ConsumerWidget {
  const LeftContainer({
    super.key,
    required this.leftTheme,
  });

  final Color leftTheme;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<String> cards = ref.watch(cardsProvider);

    void removeItem(String name) {
      ref
          .read(cardsProvider.notifier)
          .update((state) => state.where((card) => card != name).toList());
    }

    void addItem() {
      ref.read(cardsProvider.notifier).update((state) => [
            ...state,
            "示例卡片${state.length + 1}",
          ]);
    }

    void clearCards() {
      ref.read(cardsProvider.notifier).update((state) => []);
    }

    List<Widget> renderCards(List<String> cards) {
      return cards
          .map((card) => Card(
                child: SizedBox(
                  height: 100,
                  width: 150,
                  child: Center(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(card),
                      IconButton(
                        color: Colors.red,
                        icon: Icon(Icons.delete),
                        onPressed: () => removeItem(card),
                      )
                    ],
                  )),
                ),
              ))
          .toList();
    }

    return Column(children: [
      Row(
        children: [
          ElevatedButton(
            onPressed: addItem,
            child: Text("添加卡片"),
          ),
          ElevatedButton(onPressed: clearCards, child: Text("清空卡片"))
        ],
      ),
      ...renderCards(cards)
    ]);
  }
}
