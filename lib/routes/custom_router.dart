import 'package:flutter/material.dart';
import 'package:ssf/common/page/not_find_page.dart';
import 'package:ssf/pages/home_pege.dart';
import 'package:ssf/routes/routes_name.dart';
import 'package:ssf/routes/use_router.dart';

/// CustomRouter
/// 通过模块划分管理router
/// 当然，你也可以在这里设置跳转动画
class CustomRouter {
  static Map<String, Function> routes = {
    RoutesName.Root: (context) => const HomePage(),
  };

  /// 在这里，你可以随意添加你所划分的模块路由
  /// 通过Map，我们合理的把router根据模块进行划分，便于管理
  void initRouters() {
    routes.addAll(useRouter);
  }

  /// 基本跳转
  static toPage(BuildContext context, String routeName, {dynamic arguments}) {
    if (CustomRouter.routes[routeName] == null) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (_) => const NotFindPage()),
      );
    } else {
      if (arguments == null) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: CustomRouter.routes[routeName]!(),
          ),
        );
      } else {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: CustomRouter.routes[routeName]!(arguments),
          ),
        );
      }
    }
  }

  /// 回调跳转
  static Future toCBPage(BuildContext context, String routeName,
      {dynamic arguments}) async {
    dynamic cbData;
    if (CustomRouter.routes[routeName] == null) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (_) => const NotFindPage()),
      );
    } else {
      if (arguments == null) {
        cbData = await Navigator.push(
          context,
          MaterialPageRoute(
            builder: CustomRouter.routes[routeName]!(),
          ),
        );
      } else {
        cbData = await Navigator.push(
          context,
          MaterialPageRoute(
            builder: CustomRouter.routes[routeName]!(arguments),
          ),
        );
      }
    }
    return cbData;
  }
}
