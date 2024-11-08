import 'dart:developer' show log;
import 'package:get/get.dart' hide Response hide FormData;
import 'package:dio/dio.dart';

import '../../../../../global/widgets/custom_toast.dart';

import '../../local/preferences/local_storage.dart';
import '../../local/preferences/local_storage_keys.dart';
import 'app_config.dart';
import 'response_wrapper.dart';

class RequestHandler extends GetxController {
  RequestHandler({
    required Dio dio,
  }) : _dio = dio;

  final mainUrl = AppConfig.baseUrl;

  final Dio _dio;
  Dio get dio => _dio;

  void _initialize() {
    log("initializing token... ");
    updateHeader();
  }

  Future<void> updateHeader() async {
    String? currentToken = Get.find<LocalStorage>().getString(key: StorageKeys.authToken);
    String langCode = Get.find<LocalStorage>().getString(key: StorageKeys.langCode) ?? "bn";
    dio.options.headers['lang_code'] = langCode;
    if (currentToken != null && currentToken.isNotEmpty) {
      dio.options.headers['Authorization'] = 'Bearer $currentToken';
      log("#UpdatedHeader: \$TOKEN => $currentToken");
    } else {
      dio.options.headers.remove('Authorization');
    }
  }

  Future<Response> post(
    String url,
    dynamic params, {
    String? errorMsg,
    String? baseUrl,
    Options? options,
    Map<String, dynamic>? queryParams,
  }) async {
    await updateHeader();
    log("==/@ Url: ${mainUrl + url}");
    log(dio.options.headers.toString());
    log('Params in handler: $params');
    log(" ======= @ END @ ====== ");

    try {
      final response =
          await dio.post(baseUrl ?? mainUrl + url, data: params, queryParameters: queryParams, options: options);

      log('==/@ Response StatusCode: ${response.statusCode}');
      log('==/@ Response Data: ${response.data}');

      return response;
    } on DioException catch (error, stackTrace) {
      throw RequestException(
        method: "/POST",
        url: baseUrl ?? mainUrl + url,
        data: params,
        error: error,
        msg: errorMsg,
        trace: stackTrace,
        res: error.response,
        statusCode: error.response?.statusCode,
      );
    } catch (error, stackTrace) {
      throw RequestException(
        method: "/POST",
        url: baseUrl ?? mainUrl + url,
        msg: errorMsg,
        data: params,
        error: error,
        trace: stackTrace,
      );
    }
  }

  Future<ResponseWrapper> postWrp(
    String url,
    dynamic params, {
    String? errorMsg,
    String? baseUrl,
    Options? options,
    Map<String, dynamic>? queryParams,
  }) async {
    log("==/@ Url: ${mainUrl + url}");
    log(dio.options.headers.toString());
    //log(dio.options.headers.toString());

    log('Params: $params');
    log(" =========== @ END @ ====== ");

    try {
      final response = await dio.post(
        baseUrl ?? mainUrl + url,
        data: params,
        queryParameters: queryParams,
        options: options,
      );

      ResponseWrapper resWrp = ResponseWrapper.fromJson(response.data);

      if (resWrp.status == "200") {
        if (resWrp.data != null && (resWrp.data?.isNotEmpty ?? false)) {
          log('==/@ Response StatusCode: ${response.statusCode}');
          log('==/@ Response Data: ${response.data}');

          // ApiChecker.checkApi(response);
          return resWrp;
        } else {
          log("status success but data not received!");
          return resWrp;
        }
      } else {
        showToast(resWrp.message);
        return resWrp;
      }
    } on DioException catch (error, stackTrace) {
      throw RequestException(
        method: "/POST",
        url: baseUrl ?? mainUrl + url,
        data: params,
        error: error,
        msg: errorMsg,
        trace: stackTrace,
        res: error.response,
        statusCode: error.response?.statusCode,
      );
    } catch (error, stackTrace) {
      throw RequestException(
        method: "/POST",
        url: baseUrl ?? mainUrl + url,
        msg: errorMsg,
        data: params,
        error: error,
        trace: stackTrace,
      );
    }
  }

  Future<Response> delete(
    String url,
    dynamic params, {
    String? errorMsg,
    String? baseUrl,
    Options? options,
    Map<String, dynamic>? queryParams,
  }) async {
    log("==/@ Url: ${mainUrl + url}");
    log(dio.options.headers.toString());
    log(" =========== @ END @ ====== ");

    final formData = FormData.fromMap(params);

    try {
      final response =
          await dio.delete(baseUrl ?? mainUrl + url, data: formData, queryParameters: queryParams, options: options);

      log('==/@ Response StatusCode: ${response.statusCode}');
      log('==/@ Response Data: ${response.data}');

      // ApiChecker.checkApi(response);
      return response;
    } on DioException catch (error, stackTrace) {
      throw RequestException(
        method: "/DELETE",
        url: baseUrl ?? mainUrl + url,
        data: params,
        error: error,
        msg: errorMsg,
        trace: stackTrace,
        res: error.response,
        statusCode: error.response?.statusCode,
      );
    } catch (error, stackTrace) {
      throw RequestException(
        method: "/DELETE",
        url: baseUrl ?? mainUrl + url,
        msg: errorMsg,
        data: params,
        error: error,
        trace: stackTrace,
      );
    }
  }

  Future<Response> get(
    String url, {
    dynamic params,
    String? errorMsg,
    String? baseUrl,
    Options? options,
    Map<String, dynamic>? queryParams,
  }) async {
    _initialize();
    log("==/@ Url: ${mainUrl + url}");
    log(dio.options.headers.toString());

    log('Params: $params');
    log(" ======== @ END @ ====== ");

    try {
      final response = await dio.get(
        baseUrl ?? mainUrl + url,
        data: params,
        options: options,
        queryParameters: queryParams,
      );
      log('==/@ Response Data: ${response.data ?? ''}');
      return response;
    } on DioException catch (error, stackTrace) {
      throw RequestException(
        method: "/GET",
        url: baseUrl ?? mainUrl + url,
        error: error,
        msg: errorMsg,
        trace: stackTrace,
        res: error.response,
        statusCode: error.response?.statusCode,
      );
    } catch (error, stackTrace) {
      throw RequestException(
        method: "/GET",
        url: baseUrl ?? mainUrl + url,
        msg: errorMsg,
        error: error,
        trace: stackTrace,
      );
    }
  }

  Future put(
    String url,
    Map<String, dynamic> params, {
    String? errorMsg,
    String? baseUrl,
    Options? options,
    Map<String, dynamic>? queryParams,
  }) async {
    log("url ${mainUrl + url}");
    //log(dio.options.headers.toString());
    //log(dio.options.headers.toString());
    log(" =========== @ END @ ====== ");
    Response response;
    try {
      response = await dio.put(
        baseUrl ?? mainUrl + url,
        data: params,
        queryParameters: queryParams,
        options: options,
      );
      return response.data;
    } on DioException catch (error, stackTrace) {
      return RequestException(
        method: "/PUT",
        url: baseUrl ?? mainUrl + url,
        data: params,
        error: error,
        msg: errorMsg,
        trace: stackTrace,
        res: error.response,
        statusCode: error.response?.statusCode,
      );
    } catch (error, stackTrace) {
      return RequestException(
        method: "/PUT",
        url: baseUrl ?? mainUrl + url,
        msg: errorMsg,
        data: params,
        error: error,
        trace: stackTrace,
      );
    }
  }
}

class RequestException implements Exception {
  String url;
  String? msg;
  Object error;
  String method;
  Response? res;
  int? statusCode;
  StackTrace trace;
  dynamic data;

  RequestException({
    this.msg,
    this.res,
    this.data,
    this.statusCode,
    required this.url,
    required this.method,
    required this.error,
    required this.trace,
  }) {
    log("Response Data: $res");
    // ApiChecker.checkApi(res!);
    log(
      """
        ==/@
            Method: "$method"
            StatusCode: $statusCode
            Url: "$url
            ErrorMsg: "$msg"
            Data: ${data.toString()}
            Response: $res
        ==/@
      """,
      name: "#RequestException",
      time: DateTime.now(),
      error: error,
      stackTrace: trace,
    );
  }
}
