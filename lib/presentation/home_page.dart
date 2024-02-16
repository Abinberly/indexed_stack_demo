import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../domain/home_controller.dart';
import 'widget/build_button.dart';

class HomePage extends StatelessWidget {
  final controller = Get.put(HomeController());
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.menu,
          color: Color(0xFFa70000),
        ),
        title: const Text("Indexed Stack",style: TextStyle(color: Color(0xFFa70000)),),
      ),
      body: Column(
        children: [
          Obx(() => Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [buildButton(0,controller), buildButton(1,controller), buildButton(2,controller)],
              )),
          Expanded(
            child: Obx(() => IndexedStack(
                  index: controller.selectedIndex,
                  children: controller.pages
                      .map((page) =>  Center(child: Text( 'Button ${controller.selectedIndex+1}')))
                      .toList(),
                )),
          ),
          
        ],
      ),
    );
  }
}
