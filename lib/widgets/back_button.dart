import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BackButtons extends StatelessWidget {
  const BackButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.back();
      },
      child: const Icon(
        Icons.arrow_back_ios_new_outlined,
        color: Colors.white,
      ),
    );
  }
}
