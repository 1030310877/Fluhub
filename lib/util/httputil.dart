import 'package:dio/dio.dart';
import 'package:fluhub/mgr/auth_mgr.dart';
import 'package:fluhub/util/jwt.dart';

enum LoginType {
  undefine,
  personalToken,
  githubApp,
}

class HttpUtil {
  static LoginType loginType = LoginType.undefine;
  static Dio dio;

  static Future<SimpleRes> get(String path,
      {Map<String, String> params,
      Map<String, String> headers,
      CancelToken cancelToken,
      bool needJWT = false}) async {
    checkDio();
    Response<String> res;
    try {
      if (loginType == LoginType.undefine) {
      } else if (loginType == LoginType.personalToken) {
        String accessToken = await AuthMgr.getInstance().getAccessToken();
        headers ??= Map();
        headers['Authorization'] = 'Basic $accessToken';
      } else {
        if (needJWT) {
          headers ??= Map();
          var jwt = JWTUtil.getJWT();
          headers['Authorization'] = 'Bearer $jwt';
        }
      }
      res = await dio.get<String>(path,
          queryParameters: params,
          options: Options(headers: headers),
          cancelToken: cancelToken);
    } on DioError catch (e) {
      return SimpleRes(false, error: e.message);
    }
    bool succeed = res.statusCode >= 200 && res.statusCode < 300;
    return SimpleRes(succeed,
        res: res.data,
        error: succeed ? null : res.data,
        statusCode: res.statusCode);
  }

  static Future<SimpleRes> post(String path,
      {Map<String, String> params,
      data,
      Map<String, String> headers,
      CancelToken cancelToken,
      bool needJWT = false}) async {
    checkDio();
    Response<String> res;
    try {
      if (loginType == LoginType.undefine) {
      } else if (loginType == LoginType.personalToken) {
        String accessToken = await AuthMgr.getInstance().getAccessToken();
        headers ??= Map();
        headers['Authorization'] = 'Basic $accessToken';
      } else {
        if (needJWT) {
          headers ??= Map();
          var jwt = JWTUtil.getJWT();
          headers['Authorization'] = 'Bearer $jwt';
        }
      }
      res = await dio.post<String>(path,
          data: data,
          queryParameters: params,
          options: Options(headers: headers),
          cancelToken: cancelToken);
    } on DioError catch (e) {
      return SimpleRes(false, error: e.message);
    }
    bool succeed = res.statusCode >= 200 && res.statusCode < 300;
    return SimpleRes(succeed,
        res: res.data,
        error: succeed ? null : res.data,
        statusCode: res.statusCode);
  }

  static void checkDio() {
    if (dio == null) {
      BaseOptions options = BaseOptions(
        connectTimeout: 10000,
        receiveTimeout: 10000,
        sendTimeout: 10000,
        baseUrl: 'https://api.github.com',
        headers: {'Accept': 'application/vnd.github.machine-man-preview+json'},
        responseType: ResponseType.plain,
      );
      dio = Dio(options);
    }
  }
}

class SimpleRes {
  bool succeed;
  String res;
  String error;
  int statusCode;

  SimpleRes(this.succeed, {this.res, this.error, this.statusCode});

  @override
  String toString() {
    return 'succeed:$succeed, statusCode:$statusCode, res:$res, error:$error';
  }
}
