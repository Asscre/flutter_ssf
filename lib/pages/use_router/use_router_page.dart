import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

/// Custom Router基本用法
class UseRouterPage extends StatelessWidget {
  const UseRouterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _body(context);
  }

  Widget _body(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '使用 Router 管理',
            style: TextStyle(
              fontSize: 36.sp,
            ),
          ),
          SizedBox(height: 30.sp),
          const Icon(Icons.arrow_downward),
          _goToHowUseRouterPage(context),
        ],
      ),
    );
  }

  /// 适当的抽离我们的组件，让整个页面更加的清晰
  Widget _goToHowUseRouterPage(BuildContext context) {
    return TextButton(
      onPressed: () => context.go(
        '/HowUseRouterPage',
        extra: 'This is param for AsscrePage',
      ),
      child: Text(
        'Click this to HowUseRouterPage',
        style: TextStyle(
          fontSize: 30.sp,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
