import 'package:init_test_task/data/models/user_response.dart';
import 'package:init_test_task/domain/entities/user.dart';
import 'package:riverpod/riverpod.dart';

import 'entity_mapper.dart';

final userEntitiyMapperProvider = Provider<EntityMapper<User, UserResponse>>(
  ((ref) => (response) => User(
        response.id,
        response.email,
        response.firstName,
        response.lastName,
      )),
);
