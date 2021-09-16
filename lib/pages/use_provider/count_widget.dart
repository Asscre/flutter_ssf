import 'package:flutter/material.dart';
import 'package:ssf/config/style.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:ssf/providers/use_provider/count_widget_provider.dart';

/// 本页面使用Provider的中对我们页面进拆解
/// 其中print为方便调试查看build事件才引入，生成环境请勿此类操作
class CountWidget extends StatelessWidget {
  const CountWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('build');
    return _body(context);
  }

  Widget _body(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const _CountShowWidget(),
        const SizedBox(height: 30),
        _makeWidget(context),
      ],
    );
  }

  Widget _makeWidget(BuildContext context) {
    print('_makeWidget');
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _incrementBtnWidget(context),
        const SizedBox(width: 20),
        _reduceBtnWidget(context),
      ],
    );
  }

  Widget _incrementBtnWidget(BuildContext context) {
    print('_addBtnWidget');
    return OutlinedButton(
      onPressed: () => context.read<CountWidgetProvider>().increment(),
      child: Text(
        '+',
        style: TextStyle(
          fontSize: 32.sp,
        ),
      ),
    );
  }

  Widget _reduceBtnWidget(BuildContext context) {
    print('_reduceBtnWidget');
    return OutlinedButton(
      onPressed: () => context.read<CountWidgetProvider>().reduce(),
      child: Text(
        '-',
        style: TextStyle(
          fontSize: 32.sp,
        ),
      ),
    );
  }
}

/// 把需要监听更新UI的单独抽离出来
/// 这样避免了由于监听对象变化影响到其他Widget触发build
class _CountShowWidget extends StatelessWidget {
  const _CountShowWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int count = context.select((CountWidgetProvider p) => p.count);
    print('CountShowWidget');
    return Text(
      count.toString(),
      style: TextStyle(
        fontSize: 28.sp,
        color: Style.orange,
      ),
    );
  }
}

