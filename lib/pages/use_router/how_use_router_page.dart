import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ssf/config/style.dart';

/// Congratulations on learning to use Router.
/// Reasonable route planning can make our project more clear.
class HowUseRouterPage extends StatelessWidget {
  const HowUseRouterPage(this.incParam, {Key? key}) : super(key: key);

  final String incParam;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HowUseRouterPage'),
        centerTitle: true,
      ),
      body: _body(context),
    );
  }

  Widget _body(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            '恭喜你学会了使用Router。',
            style: TextStyle(
              color: Style.orange,
              fontSize: 26.sp,
            ),
          ),
          SizedBox(height: 30.h),
          Text(
            '合理规划路由可以使项目变得更加清晰明了。',
            style: TextStyle(
              color: Style.green,
              fontSize: 18.sp,
            ),
          ),
          SizedBox(height: 30.h),
          Text.rich(
            TextSpan(
              text: '外部传入参数：',
              children: [
                TextSpan(
                  text: incParam,
                  style: TextStyle(
                    color: Style.red,
                    fontSize: 14.sp,
                  ),
                ),
              ],
            ),
            style: TextStyle(
              color: Style.green,
              fontSize: 20.sp,
            ),
          ),
        ],
      ),
    );
  }
}
