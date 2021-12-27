import 'package:amazon/components/story.dart';
import 'package:flutter/material.dart';

class StoriesList extends StatelessWidget {
  const StoriesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        height: 200,
        color: Colors.red[100],
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return const Story();
          },
        ),
      ),
    );
  }
}
