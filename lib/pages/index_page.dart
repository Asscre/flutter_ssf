import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ssf/api/base_api.dart';

import 'home_pege.dart';

/// 在这里，你可以做项目初始化的工作，例如mqtt监听等
class IndexPage extends StatefulWidget {
  const IndexPage({Key? key}) : super(key: key);

  @override
  State<IndexPage> createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  @override
  void initState() {
    super.initState();
    BaseApi.init();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: () => const HomePage(),
    );
  }
}
