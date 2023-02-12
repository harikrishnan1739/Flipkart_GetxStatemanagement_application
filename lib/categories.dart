import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(Icons.arrow_back_ios_new),
          ),
          title: const Text('Categories'),
        ),
        body: Center(
          // ignore: sized_box_for_whitespace
            child: Container(
              width: double.infinity,
              height: double.infinity,
              child: const Center(child: Text('Categories Page')),
            ),
        ),
    );
  }
}