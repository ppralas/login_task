import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:init_test_task/domain/notifiers/user_notifiers/user_state_notifier.dart';

@RoutePage()
class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userValueProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('First page'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Text(user.maybeWhen(
                orElse: () => 'error',
                loaded: (user) => user.firstName,
              )),
              Text(
                user.maybeWhen(
                  orElse: () => 'error',
                  loaded: (user) => user.lastName,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
