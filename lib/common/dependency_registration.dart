import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:init_test_task/data/storage/storage.dart';

final dioProvider = Provider<Dio>((ref) {
  final dio = Dio(
    BaseOptions(
      baseUrl: ref.watch(baseUrlProvider),
    ),
  );

  dio.interceptors.add(MyInterceptor(ref.container));

  return dio;
});

final baseUrlProvider = Provider<String>((ref) => '');

final secureStorageProvider = Provider<FlutterSecureStorage>(
  (ref) => const FlutterSecureStorage(),
);

class MyInterceptor extends Interceptor {
  final ProviderContainer container;

  MyInterceptor(this.container);

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final storage = container.read(storageProvider);

    final token = await storage.getToken();

    if (token != null) {
      options.headers['Authorization'] = 'Bearer $token';
    }

    return super.onRequest(options, handler);
  }
}
