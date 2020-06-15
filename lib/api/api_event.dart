import 'package:dio/dio.dart';
import 'package:fluhub/mgr/user_mgr.dart';
import 'package:fluhub/model/user_res.dart';
import 'package:fluhub/util/httputil.dart';

class ApiEvent {
  static Future<SimpleRes> getOwnEvents({CancelToken cancelToken}) async {
    UserRes myself = await UserMgr.getInstance().getSelf();
    SimpleRes res = await HttpUtil.get('/users/${myself.login}/received_events',
        cancelToken: cancelToken);
    print(res);
    return res;
  }
}
