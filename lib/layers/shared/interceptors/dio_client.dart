import 'package:dio/dio.dart';
import 'package:prosto_tipo_testovui_projekt/layers/shared/errors/unknown_errors_exeption.dart';

class DioClient {
  final Dio _dio;

  DioClient(this._dio);
  BaseOptions get options => _dio.options.copyWith(
    connectTimeout: const Duration(seconds: 120),
    receiveTimeout: const Duration(seconds: 120),
    responseType: ResponseType.json,
    validateStatus: (status) => status == 200,
    headers: {
      'Accept': '*/*',
      'Content-Type': 'application/json',
      'Connection': 'keep-alive',
    },
  );

  void addInterceptors(List<Interceptor> interceptors) {
    _dio.interceptors.addAll(interceptors);
  }

  DioClient excludeInterceptorWhereType<T extends Interceptor>() {
    _dio.interceptors.addAll(
      List.of(_dio.interceptors)..removeWhere((element) => element is T),
    );
    return DioClient(_dio);
  }

  void changeBaseUrl(String baseUrl) {
    _dio.options = _dio.options.copyWith(baseUrl: baseUrl);
  }

  void close() => _dio.close();

  // Get.
  Future<Response<T>> get<T>(
    String url, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final Response<T> response = await _dio.get<T>(
        url,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
      );

      return response;
    } catch (e) {
      if (e is DioException) {
        rethrow;
      } else {
        throw const UnknownErrorException();
      }
    }
  }

  // Post.
  Future<Response<T>> post<T>(
    String url, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final Response<T> response = await _dio.post<T>(
        url,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );

      return response;
    } catch (e) {
      if (e is DioException) {
        rethrow;
      } else {
        throw const UnknownErrorException();
      }
    }
  }

  // Patch.
  Future<Response<T>> patch<T>(
    String url, {
    Map<String, dynamic>? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final Response<T> response = await _dio.patch<T>(
        url,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );

      return response;
    } catch (e) {
      if (e is DioException) {
        rethrow;
      } else {
        throw const UnknownErrorException();
      }
    }
  }

  // Put.
  Future<Response<T>> put<T>(
    String url, {
    Map<String, dynamic>? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final Response<T> response = await _dio.put<T>(
        url,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );

      return response;
    } catch (e) {
      if (e is DioException) {
        rethrow;
      } else {
        throw const UnknownErrorException();
      }
    }
  }

  // Delete.
  Future<Response<T>> delete<T>(
    String url, {
    Map<String, dynamic>? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    try {
      final Response<T> response = await _dio.delete<T>(
        url,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
      );

      return response;
    } catch (e) {
      if (e is DioException) {
        rethrow;
      } else {
        throw const UnknownErrorException();
      }
    }
  }

  Future<Response<T>> fetch<T>(RequestOptions requestOptions) async {
    try {
      final Response<T> response = await _dio.fetch(requestOptions);

      return response;
    } catch (e) {
      if (e is DioException) {
        rethrow;
      } else {
        throw const UnknownErrorException();
      }
    }
  }

  Future<Response<dynamic>> download(
    String url,
    String savePath, {
    Map<String, dynamic>? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    bool deleteOnError = true,
  }) async {
    try {
      final Response<dynamic> response = await _dio.download(
        url,
        savePath,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        deleteOnError: deleteOnError,
      );

      return response;
    } catch (e) {
      if (e is DioException) {
        rethrow;
      } else {
        throw const UnknownErrorException();
      }
    }
  }
}
