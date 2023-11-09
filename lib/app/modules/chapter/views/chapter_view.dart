import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/chapter_controller.dart';

class ChapterView extends GetView<ChapterController> {
  const ChapterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ChapterView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ChapterView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
