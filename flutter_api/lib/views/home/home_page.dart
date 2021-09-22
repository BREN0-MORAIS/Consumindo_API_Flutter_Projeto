import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          TextButton(
              onPressed: () => Get.toNamed('/http'),
              child: Text(
                'HTTP',
                style: TextStyle(
                    backgroundColor: Colors.red,
                    color: Colors.white,
                    ),
              )),
               TextButton(
              onPressed: () {},
              child: Text(
                'DIO',
                style: TextStyle(
                    backgroundColor: Colors.red,
                    color: Colors.white,
                    ),
              ))
              ,
               TextButton(
              onPressed: () {},
              child: Text(
                'GetConnect',
                style: TextStyle(
                    backgroundColor: Colors.red,
                    color: Colors.white,
                    ),
              ))
        ],
      ),
    );
  }
}
