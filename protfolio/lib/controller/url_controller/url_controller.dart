
// class UrlController extends GetxController {
//   static UrlController get find => Get.find();
//   Dio dio = Dio();

//   UrlController() {
//     log("initila base url ===>>> ");
//     getBaseUrl();
//   }
//   UrlModelData? urlModelData;
//   Future getBaseUrl() async {
//     try {
//       final response = await dio.get(AppConfig.baseUrlControllerUrl);
//       ResponseWrapper resWrap = ResponseWrapper.fromJson(response.data);
//       log("url response: ${resWrap.data}");

//       if (resWrap.status == "200" && resWrap.data != null) {
//         urlModelData = UrlModelData.fromJson(resWrap.data!);
//         AppConfig.updateBaseUrl(urlModelData?.url);
//         update();
//       } else {
//         AppConfig.updateBaseUrl(AppConfig.defaultBaseUrl);
//         update();
//       }
//     } catch (error, trace) {
//       if (error is Exception) {
//         AppConfig.updateBaseUrl(AppConfig.defaultBaseUrl);
//         log(error.toString());
//         refresh();
//       }
//       log('#GET_USER_PROFILE', error: error, stackTrace: trace);
//     }
//   }
// }
