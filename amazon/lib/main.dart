import 'package:amazon/components/end_side_bar.dart';
import 'package:amazon/components/side_bar.dart';
import 'package:flutter/material.dart';

import 'components/app_bar.dart';
import 'lists/stories_list.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomPage(),
    );
  }
}

class HomPage extends StatelessWidget {
  const HomPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SideBar(),
          Expanded(
            flex: 3,
            child: CustomScrollView(slivers: [
              StoriesList(),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return Container(
                      height: 350,
                      margin: EdgeInsets.all(10),
                      color: Colors.pink[100],
                    );
                  },
                ),
              ),
            ]),
          ),
          EndSideBar(),
        ],
      ),
    );
  }
}
