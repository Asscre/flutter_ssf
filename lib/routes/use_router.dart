
import 'package:ssf/pages/use_router/how_use_router_page.dart';
import 'package:ssf/routes/routes_name.dart';

final Map<String, Function> useRouter = {
  RoutesName.HowUseRouterPage: (String incParam) => (_) => HowUseRouterPage(incParam),
};
