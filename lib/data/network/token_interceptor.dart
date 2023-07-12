import 'package:dio/dio.dart';

class TokenInterceptor extends Interceptor {
  final String bearerToken;
  final String authenticationUrl;

  TokenInterceptor(
    this.bearerToken,
    this.authenticationUrl,
  );

  @override
  Future onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    options.headers.addEntries(
      [
        const MapEntry<String, String>(
          Headers.contentTypeHeader,
          Headers.jsonContentType,
        ),
        MapEntry<String, String>('Authorization', 'Bearer $bearerToken'),
      ],
    );
    return super.onRequest(options, handler);
  }
}
