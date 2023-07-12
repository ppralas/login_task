// import 'package:init_test_task/data/user_repository.dart';
// import 'package:init_test_task/domain/entities/user.dart';
// import 'package:init_test_task/domain/notifiers/user_notifiers/user_state.dart';
// import 'package:init_test_task/domain/user_provider.dart';
// import 'package:riverpod/riverpod.dart';

// final userValueProvider = StateNotifierProvider<UserStateNotifier, UserState>(
//   (ref) => UserStateNotifier(
//     ref.read(
//         userRepositoryProvider), // Assuming you have a user repository provider
//     ref.watch(userProvider), // Assuming you have a user provider
//   ),
// );

// class UserStateNotifier extends StateNotifier<UserState> {
//   final UserRepository _userRepository;
//   final User _user;

//   UserStateNotifier(this._userRepository, this._user)
//       : super(const UserState.initial());

//   void getUser() async {
//     if (state.whenOrNull(loading: (_) => true) == true) {
//       return;
//     }

//     state = UserState.loading(_user);

//     final result = await _userRepository.getUser();

//     result.fold(
//       (error) => state = UserState.failure(error),
//       (response) {
//         final user = User(
//           response.id,
//           response.email,
//           response.firstName,
//           response.lastName,
//         );
//         state = UserState.loaded(user);
//       },
//     );
//   }
// }
