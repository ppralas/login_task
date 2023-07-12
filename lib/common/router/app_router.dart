import 'package:auto_route/auto_route.dart';
import 'package:riverpod/riverpod.dart';

part 'app_router.gr.dart';

final appRouterProvider = Provider<AppRouter?>((ref) {
  return AppRouter();
});

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: LoginRoute.page, initial: true),
        AutoRoute(page: HomeRoute.page),
      ];
}
