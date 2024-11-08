import 'dart:developer';

class AppConfig {
  static const String baseUrl = 'http://private.rbftechzone.com';

  /// Get Vep Owner ID
  static int? _vepOwnerId;
  static int get vepOwnerId => _vepOwnerId!;
  static setVepOwnerId(int id) {
    _vepOwnerId = id;
    log("setting vep id => $vepOwnerId");
  }

  /// Get Vep Register Number
  static String? _vepVehicleRegiNo;
  static String get vepVehicleRegiNo => _vepVehicleRegiNo!;
  static setVepVehicleRegiNo(String regiNo) {
    _vepVehicleRegiNo = regiNo;
    log("setting vep id => $vepVehicleRegiNo");
  }

  /// Get Vep Register Number
  static String? _paymentMethodId;
  static String get paymentMethodId => _paymentMethodId!;
  static setDefaultPaymentMethod(String paymentMethodId) {
    _paymentMethodId = paymentMethodId;
    log("setting vep id => $paymentMethodId");
  }

  static String getAllLanguage = "/api/v1/languages";


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


}
