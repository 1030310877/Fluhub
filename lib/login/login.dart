import 'package:fluhub/res/color.dart';
import 'package:fluhub/res/string.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

///
/// 登录界面
///
class Login extends StatefulWidget {
  @override
  LoginState createState() {
    return LoginState();
  }
}

class LoginState extends State<Login> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ConstString.login,
//      theme: ThemeData(
//        inputDecorationTheme: InputDecorationTheme(
//
//        ),
//      ),
      home: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            color: ConstColor.color1,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Center(
                      child: SizedBox(
                        width: 100,
                        height: 100,

                        ///头像显示，这里先显示默认头像
                        child: SvgPicture.asset(
                          'assets/github_avatar.svg',
                          color: ConstColor.white,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: ConstColor.white,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        /// 账号和密码的输入框
                        Container(
                          padding: EdgeInsets.only(top: 40, bottom: 10),
                          width: 300,
                          child: TextField(
                            style: TextStyle(
                              color: ConstColor.textBlack,
                            ),
                            minLines: 1,
                            maxLines: 1,
                            cursorWidth: 1,
                            autofocus: true,
                            textAlignVertical: TextAlignVertical.center,
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(8),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: ConstColor.color1,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: ConstColor.hintGray,
                                ),
                              ),
                              labelText: ConstString.account,
                              labelStyle: TextStyle(
                                color: ConstColor.color1,
                              ),
                              hintText: ConstString.pleaseInputAccount,
                              hintStyle: TextStyle(
                                color: ConstColor.hintGray,
                              ),
                              alignLabelWithHint: true,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 10, bottom: 8),
                          width: 300,
                          child: TextField(
                            style: TextStyle(
                              color: ConstColor.textBlack,
                            ),
                            minLines: 1,
                            maxLines: 1,
                            cursorWidth: 1,
                            autofocus: true,
                            obscureText: true,
                            textAlignVertical: TextAlignVertical.center,
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(8),
                              suffixIcon: Align(
                                widthFactor: 1,
                                heightFactor: 1,
                                child: SvgPicture.asset(
                                  'assets/ic_pwd_hide.svg',
                                  color: ConstColor.color1,
                                  width: 20,
                                  height: 20,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: ConstColor.color1,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: ConstColor.hintGray,
                                ),
                              ),
                              labelText: ConstString.password,
                              labelStyle: TextStyle(
                                color: ConstColor.color1,
                              ),
                              hintText: ConstString.pleaseInputPwd,
                              hintStyle: TextStyle(
                                color: ConstColor.hintGray,
                              ),
                              alignLabelWithHint: true,
                            ),
                          ),
                        ),
                        Container(
                          width: 300,
                          margin: EdgeInsets.only(top: 16, bottom: 24),
                          decoration: BoxDecoration(
                            color: ConstColor.color5,
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                          child: FlatButton.icon(
                            onPressed: null,
                            icon: SvgPicture.asset(
                              'assets/ic_next.svg',
                              color: ConstColor.white,
                              width: 20,
                              height: 20,
                            ),
                            label: Text(
                              ConstString.login,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: ConstColor.white, fontSize: 18),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
