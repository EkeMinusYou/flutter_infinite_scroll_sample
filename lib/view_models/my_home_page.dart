import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:flutter_template/data/models/item.dart';

part 'my_home_page.freezed.dart';

final myHomePageViewModelProvider = StateNotifierProvider<MyHomePageViewModel, MyHomePageState>((ref) {
  return MyHomePageViewModel();
});

@freezed
class MyHomePageState with _$MyHomePageState {
  factory MyHomePageState({
    required List<Item> items,
    required String? nextToken,
  }) = _MyHomePageState;
}

class MyHomePageViewModel extends StateNotifier<MyHomePageState> {
  MyHomePageViewModel() : super(MyHomePageState(items: [], nextToken: null)) {
    initialize();
  }

  static const _addCount = 20;

  Future<void> initialize() async {
    Future.delayed(const Duration(seconds: 1), () {
      final items = <Item>[];
      for (var i = 0; i < _addCount; i++) {
        items.add(Item(name: 'Item no. $i'));
      }
      state = state.copyWith(items: items, nextToken: items.length.toString());
    });
  }

  Future<void> handleFetchNextWithIndex(int index) async {
    if (index + 1 != state.items.length) return;

    if (state.nextToken == null) return;
    final next = int.parse(state.nextToken!);

    // pagination end
    if (next >= 100) {
      state = state.copyWith(nextToken: null);
      return;
    }

    Future.delayed(const Duration(seconds: 1), () {
      final items = <Item>[];
      for (var i = 0; i < _addCount; i++) {
        final id = i + next;
        items.add(Item(name: 'Item no. $id'));
      }
      state = state.copyWith(items: [...state.items, ...items], nextToken: state.items.length.toString());
    });
  }
}
