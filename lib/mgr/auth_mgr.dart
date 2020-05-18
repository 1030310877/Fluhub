import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class AuthMgr {
  static final AuthMgr _instance = AuthMgr._();

  static AuthMgr getInstance() {
    return _instance;
  }

  SharedPreferences _sp;

  AuthMgr._() {
    SharedPreferences.getInstance().then((value) => _sp = value);
  }

  String _cacheToken;

  static String generateAccessToken(String userName, String personalToken) {
    String str = '$userName:$personalToken';
    return base64Encode(utf8.encode(str));
  }

  static final String _keyToken = 'key_access_token';

  Future<String> getAccessToken() async {
    if (_cacheToken == null || _cacheToken.isEmpty) {
      if (_sp == null) {
        _sp = await SharedPreferences.getInstance();
      }
      _cacheToken = _sp.getString(_keyToken);
    }
    return _cacheToken;
  }

  saveAccessToken(String accessToken) async {
    _cacheToken = accessToken;
    if (_sp == null) {
      _sp = await SharedPreferences.getInstance();
    }
    _sp.setString(_keyToken, accessToken);
  }

  removeAccessToken() {
    _cacheToken = null;
    if (_sp != null) {
      _sp.remove(_keyToken);
    }
  }
}
