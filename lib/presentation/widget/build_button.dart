
  import 'package:flutter/material.dart';

import '../../domain/home_controller.dart';

Widget buildButton(int index,HomeController controller) {
    return GestureDetector(
      onTap: () => controller.selectedIndex = index,
      child: Card(
        elevation: 8,
        color: controller.selectedIndex == index
            ? const Color(0xFFa70000)
            : Colors.grey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Button ${index + 1}',
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }