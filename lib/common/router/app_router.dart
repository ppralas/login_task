import 'package:auto_route/auto_route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:init_test_task/presentation/home_screen.dart';
import 'package:init_test_task/presentation/log_in_screen.dart';

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
