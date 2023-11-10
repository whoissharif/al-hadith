import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../contants.dart';
import '../../../routes/app_pages.dart';
import '../../../widgets/polygon_shape.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F4F4),
      appBar: AppBar(
        title: const Text('হাদিস গ্রন্থসমূহ'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 15,
              crossAxisSpacing: 15,
            ),
            itemCount: 6,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Get.toNamed(Routes.CHAPTER);
                },
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: const Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(12)),
                  child: Column(
                    children: [
                      const PolygonShape(
                        text: 'AB',
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Expanded(
                        child: Text(
                          'সহীহ বুখারী',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: titleColor,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Expanded(
                        child: Text(
                          '১৮০ টি হাদিস',
                          style: TextStyle(
                            fontSize: 14,
                            color: subTitleColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
