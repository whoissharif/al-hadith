import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/hadith_controller.dart';

class HadithView extends GetView<HadithController> {
  const HadithView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HadithView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'HadithView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
