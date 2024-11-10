import 'dart:developer';

class AppConfig {


  static String baseUrlControllerUrl = 'http://projects.rbftechzone.com/api/v2/client/projects/4';
  static String defaultBaseUrl = "http://mukta.rbfgroupbd.com";
  static String baseUrl = '';
  static String get updatedBaseUrl => baseUrl;
  static updateBaseUrl(String? newUrl) {
    baseUrl = newUrl ?? defaultBaseUrl;
  }

  // ==/@ Auth
  static String logInUrl = "/api/v1/user_login";
  static String registrationUrl = "/api/v1/user_registration";
  static String googleSignInSignUpUrl = "/api/v1/user_google_signin_signup";
  static String userOnBoardingUri = "/api/v1/user_onbording";

  static String userPassUpdateUrl = "/api/v1/update_password";
  static String forgotPassOtpSendToEmailUrl = "/api/v1/otp_send_to_email";
  static String verifyOtp = "/api/v1/verify_otp";
  static String resetPasswordWithOtpUrl = "/api/v1/reset_password_with_otp";
  static String deleteIncriveAccountUrl = "/api/v1/delete_inacrive_account";

  // ==/@ User Profile
  static String userProfileUrl = "/api/v1/user_profile_details";
  static String updateProfileImgUrl = "/api/v1/update_profile_image";
  static String updatePrivateDetailsUrl = "/api/v1/update_user_profile_details";
  static String updateUserProfileStatusUrl = "/api/v1/update_user_profile_status";
  static String verifyUserEmailUrl = "/api/v1/verify_user_email";
  static String verifyUserMobileUrl = "/api/v1/verify_user_mobile";


  static String imageUri = "http://muktabd.info/post_images/image_1672958017642.jpeg";
  static String loginUri = "/admin/login";
  static String createPostUri = "/create/post";
  static String getAllPostUri = "/get/all/posts";
  static String contactMeUri = "/contact/me";
}
