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
    required bool initializing,
  }) = _MyHomePageState;
}

class MyHomePageViewModel extends StateNotifier<MyHomePageState> {
  MyHomePageViewModel() : super(MyHomePageState(items: [], nextToken: null, initializing: true)) {
    initialize();
  }

  static const _addCount = 20;

  Future<void> initialize() async {
    Future.delayed(const Duration(seconds: 1), () {
      final items = <Item>[];
      for (var i = 0; i < _addCount; i++) {
        items.add(Item(name: 'Item no. $i'));
      }
      state = state.copyWith(items: items, nextToken: items.length.toString(), initializing: false);
    });
  }

  Future<void> handleFetchNextWithIndex(int index) async {
    if (index + 1 != state.items.length) return;

    // pagination end
    if (state.items.length >= 100) {
      return;
    }

    Future.delayed(const Duration(seconds: 1), () {
      final items = <Item>[];
      for (var i = 0; i < _addCount; i++) {
        final id = i + state.items.length;
        items.add(Item(name: 'Item no. $id'));
      }
      print('called handleFetchNextIndex${index.toString()}');
      state = state.copyWith(items: [...state.items, ...items], nextToken: state.items.length.toString());
    });
  }
}
