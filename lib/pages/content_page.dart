import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Content_page extends StatefulWidget {
  const Content_page({super.key});

  @override
  State<Content_page> createState() => _Content_pageState();
}

class _Content_pageState extends State<Content_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TitleDenemeDeğişikliği"),
      ),
      body: Column(),
    );
  }
}
