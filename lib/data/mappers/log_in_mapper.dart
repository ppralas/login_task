import 'package:init_test_task/data/models/log_in_request.dart';
import 'package:init_test_task/domain/entities/log_in.dart';
import 'package:riverpod/riverpod.dart';

import 'entity_mapper.dart';

final logInEntitiyMapperProvider = Provider<EntityMapper<LogIn, LogInRequest>>(
  ((ref) => (response) => LogIn(
        response.email,
        response.password,
      )),
);
