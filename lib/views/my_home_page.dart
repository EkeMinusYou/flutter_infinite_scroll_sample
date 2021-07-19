import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:flutter_template/view_models/my_home_page.dart';

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: _ListView(),
    );
  }
}

class _ListView extends HookConsumerWidget {
  final _nextFetchThreshold = 2.0;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cacheExtent = MediaQuery.of(context).orientation == Orientation.portrait
        ? MediaQuery.of(context).size.height * _nextFetchThreshold
        : MediaQuery.of(context).size.width * _nextFetchThreshold;

    final myHomePageState = ref.watch(myHomePageViewModelProvider);

    return ListView.builder(
      cacheExtent: cacheExtent,
      itemCount: myHomePageState.items.length,
      itemBuilder: (context, index) {
        if (index == myHomePageState.items.length - 1) {
          ref.read(myHomePageViewModelProvider.notifier).fetchNextList();
        }
        return Container(
            decoration: BoxDecoration(border: Border(bottom: BorderSide(width: 1.0, color: Colors.grey))),
            child: ListTile(
              leading: Icon(Icons.book),
              title: Text(
                myHomePageState.items[index].name,
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ));
      },
    );
  }
}
