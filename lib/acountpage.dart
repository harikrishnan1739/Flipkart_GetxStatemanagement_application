import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Acountpage extends StatelessWidget {
  const Acountpage({super.key});

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
        title: const Text('AcountPage'),
      ),
      body: Center(
        // ignore: sized_box_for_whitespace
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: const Center(child: Text('Acount Page')),
        ),
      ),
    );
  }
}