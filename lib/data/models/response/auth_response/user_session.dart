

class UserSession {
  static String userId;
  static String userToken;
  static String showCategoryResult;
  static Map<String,dynamic> notificationData;

  static clearSession() {
    userId = null;
    userToken = null;
    showCategoryResult = null;
    notificationData = null;
  }
}
