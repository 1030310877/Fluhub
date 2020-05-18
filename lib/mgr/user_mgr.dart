import 'dart:convert';

import 'package:fluhub/model/user_res.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserMgr {
  static final UserMgr _instance = UserMgr._();

  static UserMgr getInstance() {
    return _instance;
  }

  SharedPreferences _sp;

  UserMgr._() {
    SharedPreferences.getInstance().then((value) => _sp = value);
  }

  static final String _keyUser = 'key_user';
  UserRes _self;

  Future<UserRes> getSelf() async {
    if (_self != null) {
      return _self;
    } else {
      if (_sp == null) {
        _sp = await SharedPreferences.getInstance();
      }
      String userResStr = _sp.getString(_keyUser);
      if (userResStr != null && userResStr.isNotEmpty) {
        _self = UserRes.fromJson(json.decode(userResStr));
      }
      return _self;
    }
  }

  saveSelf(UserRes userRes) async {
    _self = userRes;
    if (_sp == null) {
      _sp = await SharedPreferences.getInstance();
    }
    _sp.setString(_keyUser, json.encode(userRes.toJson()));
  }
}
