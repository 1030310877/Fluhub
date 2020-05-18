import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:fluhub/mgr/auth_mgr.dart';
import 'package:fluhub/mgr/user_mgr.dart';
import 'package:fluhub/model/user_res.dart';
import 'package:fluhub/util/httputil.dart';

class ApiUser {
  Future<SimpleRes> getUserInfo(String userName, String personalToken,
      {CancelToken cancelToken}) async {
    String accessToken = AuthMgr.generateAccessToken(userName, personalToken);
    Map<String, String> headers = {'Authorization': 'Basic $accessToken'};
    SimpleRes res =
        await HttpUtil.get('/user', headers: headers, cancelToken: cancelToken);
    print(res);
    if (res.succeed) {
      HttpUtil.loginType = LoginType.personalToken;
      AuthMgr.getInstance().saveAccessToken(accessToken);
      UserRes userRes = UserRes.fromJson(json.decode(res.res));
      UserMgr.getInstance().saveSelf(userRes);
    }
    return res;
  }
}
