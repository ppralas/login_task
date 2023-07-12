import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:init_test_task/domain/entities/user.dart';

final userProvider = Provider<User>((ref) {
  return const User(
    1, // Replace with the actual user ID from the API response
    'john@doe.com', // Replace with the actual email from the API response
    'John', // Replace with the actual first name from the API response
    'Doe', // Replace with the actual last name from the API response
  );
});
