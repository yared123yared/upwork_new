class ApiConstants {
  /**Server url*/

  ///todo change Env to production when release to the client
  ///For Developer
  static const PRODUCTION_BASE_URL = "https://api.argotx.com/v1/";

  // static const PRODUCTION_BASE_URL = "https://devapi.argotx.com/v1/";
  //static const DEV_BASE_URL = "https://224e56e4db04.ngrok.io/v1/";
  static const DEV_BASE_URL = "https://devapi.argotx.com/v1/";

  //static const SOCKET_URL = "http://18.190.110.38:8080/?room=";
  static const SOCKET_URL =
      "wss://ldfpgneoq1.execute-api.us-east-2.amazonaws.com/dev";

  static const DOCS_BASE_URL =
      "https://argo-storage.s3.ap-south-1.amazonaws.com/";
  static String AGORA_PLAIN_CREDENTION =
      "d14dff8bbef64af981139db223ac0eff:f93da2285c4f489d9fbf7cefd9c0b2bf";
  static const AGORA_RECORDING_RESOURCE_ID =
      "https://api.agora.io/v1/apps/4f673277993b48d5870a9d380b031607/cloud_recording/acquire";
  static const AGORA_RECORDING_URL =
      "https://api.agora.io/v1/apps/4f673277993b48d5870a9d380b031607/cloud_recording/resourceid/";
  static const AGORA_API_KEY = "d14dff8bbef64af981139db223ac0eff";
  static const AGORA_SECERET_KEY = "f93da2285c4f489d9fbf7cefd9c0b2bf";

  //todo before share this change it to production

  ///APIs
  static const LOGIN = "auth/login";
  static const SIGNUP = "auth/signup";
  static const RESEND_EMAIL = "auth/resend/verify-email";
  static const FORGOT_PASSWORD = "auth/forgot-password";
  static const GET_ADDRESS = "auth/city-states";
  static const UPDATE_PROFILE = "user/profile/update";
  static const GET_VIDEO_LIST = "admin/videos";
  static const GET_NOTIFICATION_LIST = "user/notifications";
  static const LOGOUT = "auth/logout";
  static const NOTIFICATION_DELETE = "";
  static const READ_NOTIFICATION = "";
  static const GET_FAST_QUOTE = "user/fast-quotes";
  static const CHANGE_PASSWORD = "auth/change-password";
  static const GET_NOTIFICATION_PREFERENCE = "user/profile/settings";
  static const UPDATE_NOTIFICATION_PREFERENCE = "user/profile/change-setting";
  static const PROFILE = "user/profile/details";
  static const QUOTES = "user/quotes";
  static const GET_POLICY = "user/policy";
  static const UPLOAD_DOCUMENT = "user/document-vault";
  static const INSURANCE_CARRIER = "admin/quotes/dropdown/type-list";
  static const GET_HISTORY = "user/chat/history";
  static const OTHER_TAX = "user/tax/other";
  static const PERSONAL_TAX = "user/tax/";
  static const REFRESH_TOKEN = "auth/refresh-token";
  static const GET_PENDING_SIGN = "user/pending-signatures";
  static const GET_TAX_SUBMIT = "/user/tax/tax-submits";
  static const GET_ESTIMATE = "/user/tax/tax-estimates";
  static const PUT_ADMIN_DROP = "/user/chat/status";
  static const PUT_SIGN = "/user/pending-signatures";
  static const CLEAR_NOTIFICATION = "/user/notifications";
  static const GET_COUNT = "/user/document-vault/counts";
  static const GET_MOTOR_QUOTE = "/user/quotes/motorcycle";
  static const GET_MEXICO_QUOTE = "/user/quotes/mexcio";
  static const GET_COMMERCIAL_QUOTE = "/user/quotes/commercial";
  static const GET_HOUSE_QUOTE = "/user/quotes/homeowner";
}
