import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prj_getx/screens/third.dart';

class First extends StatelessWidget {
  const First({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              Get.toNamed('/second', arguments: {'someArgument': 'someInfo'});
            },
            child: Text('First Screen'),
          ),
          MaterialButton(
            color: Colors.blue,
            onPressed: () => Get.toNamed('/second', arguments: {'someArgument': 'someInfo'}),
            child: Text('Go to second Page'),
          ),
          MaterialButton(
            color: Colors.blue,
            onPressed: () => Get.to(Third()),
            child: Text('Go to third Page'),
          ),
          MaterialButton(
            color: Colors.blue,
            onPressed: () => Get.off(() => Third()),
            child: Text('Go to third Page and Off'),
          ),
        ],
      ),
    );
  }
}
