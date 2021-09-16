import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UseDioPage extends StatelessWidget {
  const UseDioPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        '欢迎👏使用flutter_ssf',
        style: TextStyle(
          fontSize: 32.sp,
        ),
      ),
    );
  }
}
