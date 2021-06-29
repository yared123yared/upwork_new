import 'api_constants.dart';
import 'environment.dart';

class ApiService {
  static ApiService _instance;

  factory ApiService() => _instance ??= ApiService._();

  ApiService._();

  static const String USER_AGENT = "user-agent";
  static const _timeout = 6000;

  bool get isInDebugMode {
    bool inDebugMode = false;
    assert(inDebugMode = true);
    return inDebugMode;
  }

  //Switch the environment between Prod and Dev
  Environment _env = _Prod();

  Environment get env => _env;
/*

  Dio get dio => _dio();

  Dio _dio() {
    final options = BaseOptions(
      baseUrl: _env.baseUrl,
      connectTimeout: _timeout,
      receiveTimeout: _timeout,
      headers: {"Authorization":"Bearer ${UserSession.userToken}"}
    );

    var dio = Dio(options);

    dio.interceptors.add(requestInterceptor(dio, _env));
    return dio;
  }
*/

  void setEnvironment(EnvironmentType type) {
    print("Setting environment to $type");
    switch (type) {
      case EnvironmentType.DEV:
        _env = _Dev();
        break;
      default:
        _env = _Prod();
    }
  }
}

class _Prod extends Environment {
  @override
  EnvironmentType get type => EnvironmentType.PROD;

  @override
  String get baseUrl => ApiConstants.PRODUCTION_BASE_URL;

  @override
  String get apiKey => "For api key";
}

class _Dev extends Environment {
  @override
  EnvironmentType get type => EnvironmentType.DEV;

  @override
  String get baseUrl => ApiConstants.DEV_BASE_URL;

  @override
  String get apiKey => "For api key";
}

enum ApiStatus { INITIAL, LOADING, SUCCESS, ERROR }
