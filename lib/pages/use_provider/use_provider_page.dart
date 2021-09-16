import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:ssf/config/style.dart';
import 'package:ssf/pages/use_provider/count_widget.dart';
import 'package:ssf/providers/use_provider/count_widget_provider.dart';

class UseProviderPage extends StatelessWidget {
  const UseProviderPage({Key? key}) : super(key: key);

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
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _titleWidget(),
          const SizedBox(height: 80),
          ChangeNotifierProvider<CountWidgetProvider>(
            create: (_) => CountWidgetProvider(),
            child: const CountWidget(),
          ),
        ],
      ),
    );
  }

  Widget _titleWidget() {
    return Text(
      '使用Provider对业务拆解',
      style: TextStyle(
        fontSize: 32.sp,
      ),
      textAlign: TextAlign.center,
    );
  }
}
