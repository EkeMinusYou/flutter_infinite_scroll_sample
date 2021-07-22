import 'package:flutter/material.dart';
import 'package:flutter_template/utils/calculate_cache_extent.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:flutter_template/view_models/my_home_page.dart';

class MyHomePage extends HookConsumerWidget {
  final _nextFetchThreshold = 2.0;
  final String title;

  MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cacheExtent = calculateCacheExtent(context, _nextFetchThreshold);
    final myHomePageState = ref.watch(myHomePageViewModelProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: myHomePageState.initializing
          ? Center(child: const CircularProgressIndicator())
          : CustomScrollView(
              cacheExtent: cacheExtent,
              slivers: [_listView(ref, myHomePageState)],
            ),
    );
  }
}

SliverList _listView(WidgetRef ref, MyHomePageState myHomePageState) {
  return SliverList(
    delegate: SliverChildBuilderDelegate(
      (context, index) {
        ref.read(myHomePageViewModelProvider.notifier).handleFetchNextWithIndex(index);
        return Container(
          decoration: BoxDecoration(border: Border(bottom: BorderSide(width: 1.0, color: Colors.grey))),
          child: ListTile(
            leading: Icon(Icons.book),
            title: Text(
              myHomePageState.items[index].name,
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
        );
      },
      childCount: myHomePageState.items.length,
      semanticIndexOffset: 500,
      addSemanticIndexes: true,
    ),
  );
}
