import 'package:flutter/material.dart';
import 'package:ssf/config/style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotFindPage extends StatelessWidget {
  const NotFindPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('没有找到页面'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              'assets/404.png',
              width: 300.w,
              height: 300.w,
            ),
          ),
          Text(
            '没有找到页面',
            style: TextStyle(
              color: Style.grey,
              fontSize: Style.titleSz,
            ),
          )
        ],
      ),
    );
  }
}
