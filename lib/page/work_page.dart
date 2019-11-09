import 'package:flutter/material.dart';
import 'package:personal_website/responsive_widget.dart';

class WorkPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ResponsiveWidget(
        largeScreen: MyProjects(
          crossAxisCount: 4,
        ),
        mediumScreen: MyProjects(
          crossAxisCount: 2,
        ),
        smallScreen: MyProjects(
          crossAxisCount: 1,
        ),
      ),
    );
  }
}

class MyProjects extends StatelessWidget {
  MyProjects({this.crossAxisCount});
  final int crossAxisCount;
  @override
  Widget build(BuildContext context) {
    return AnimatedPadding(
      duration: Duration(seconds: 1),
      padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.1),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount),
        itemCount: 4,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Placeholder(
              color: Colors.blue,
            ),
          );
        },
      ),
    );
  }
}
