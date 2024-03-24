import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ContentList(),
    );
  }
}


class ContentList extends StatelessWidget {
  const ContentList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(

    )
  }
}
