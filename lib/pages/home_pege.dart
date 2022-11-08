import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ssf/config/style.dart';
import 'package:ssf/pages/use_dio/use_dio_page.dart';
import 'package:ssf/pages/use_provider/use_provider_page.dart';
import 'package:ssf/pages/use_router/use_router_page.dart';

/// HomePage用于项目基本页面的设置
/// 例如首页底部栏，项目页面划分等
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late List<Widget> pageList;

  late List<BottomNavigationBarItem> navBar;

  // 当前被选中的 tab 页的下标
  late int currentIndex;

  @override
  void initState() {
    super.initState();

    pageList = [
      const UseRouterPage(),
      const UseProviderPage(),
      const UseDioPage(),
    ];

    navBar = [
      BottomNavigationBarItem(
        label: '',
        icon: Icon(
          Icons.home_outlined,
          size: 28.sp,
        ),
      ),
      BottomNavigationBarItem(
        label: '',
        icon: Icon(
          Icons.chat_outlined,
          size: 28.sp,
        ),
      ),
      BottomNavigationBarItem(
        label: '',
        icon: Icon(
          Icons.privacy_tip_outlined,
          size: 28.sp,
        ),
      ),
    ];

    currentIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.white,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        fixedColor: Style.orange,
        unselectedItemColor: Style.grey,
        backgroundColor: Style.blue,
        currentIndex: currentIndex,
        elevation: 25.h,
        items: navBar,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
      body: IndexedStack(
        index: currentIndex,
        children: pageList,
      ),
    );
  }
}
