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
  }) = _MyHomePageState;
}

class MyHomePageViewModel extends StateNotifier<MyHomePageState> {
  MyHomePageViewModel() : super(MyHomePageState(items: [])) {
    fetchList();
  }

  static const _addCount = 20;

  Future<void> fetchList() async {
    Future.delayed(const Duration(seconds: 2), () {
      final items = <Item>[];
      for (var i = 0; i < _addCount; i++) {
        final id = state.items.length + i;
        items.add(Item(name: 'Item no. $id'));
      }
      state = state.copyWith(items: [...state.items, ...items]);
    });
  }
}
