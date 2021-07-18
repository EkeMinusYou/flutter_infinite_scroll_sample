import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:flutter_template/view_models/my_home_page.dart';

class MyHomePage extends HookConsumerWidget {
  final String title;

  MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final myHomePageState = ref.watch(myHomePageViewModelProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView.builder(
        itemCount: 30,
        itemBuilder: (context, index) {
          return Container(
              decoration: BoxDecoration(border: Border(bottom: BorderSide(width: 1.0, color: Colors.grey))),
              child: ListTile(
                leading: Icon(Icons.book),
                title: Text(
                  'Item no. $index',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ));
        },
      ),
    );
  }
}
