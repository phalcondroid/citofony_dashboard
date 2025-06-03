// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authentication_repo_impl.dart';

// **************************************************************************
// RestRepositoryGenerator
// **************************************************************************

class _AuthenticationRepoImpl implements AuthenticationRepoImpl {
  @override
  Future<BaseSingleResponse<AuthFactory>> login(LoginParams params) async {
    try {
      var container = GetIt.I<CleanNetworkContainer>();
      var adapter = HttpAdapter(
        http: container.getContent('__connection__default'),
      );
      LocalStorageAdapter localAdapter = GetIt.I<LocalStorageAdapter>();
      Map<String, dynamic> rawResponse = {};
      rawResponse = await adapter.saveAndGetOne('/auth', [
        params.toJson(),
      ], options: HttpOptions(headers: {}));
      await localAdapter.clear('BaseSingleResponse');
      return BaseSingleResponse.fromJson(rawResponse, (Object? raw) {
        return AuthFactory.fromJson(raw as Map<String, Object?>);
      });
    } on dynamic catch (e, s) {
      print("=>>>> $e, $s");
      throw CleanNetworkHttpException(
        message: e,
        stackTrace: s,
        error: e?.error,
        response: CleanNetworkHttpExceptionResponse(
          data: e?.response?.data,
          extra: e?.response?.extra,
          headers: e?.response?.headers?.map,
          isRedirect: e?.response?.isRedirect ?? false,
          statusCode: e?.response?.statusCode,
          statusMessage: e?.response?.statusMessage,
        ),
        requestInfo: CleanNetworkHttpExceptionData(
          type: getExceptionType(e?.type),
          baseUrl: e?.requestOptions.baseUrl,
          data: e?.requestOptions?.data,
          headers: e?.requestOptions?.headers,
          method: e?.requestOptions?.method,
          path: e?.requestOptions?.path,
          queryParams: e?.requestOptions?.queryParameters,
          uri: e?.requestOptions?.uri,
        ),
      );
    }
  }
}
