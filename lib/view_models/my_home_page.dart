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
  MyHomePageViewModel() : super(MyHomePageState(items: []));
}
