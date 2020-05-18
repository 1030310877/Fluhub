import 'package:corsac_jwt/corsac_jwt.dart';
import 'package:fluhub/hide/hide.dart';

class JWTUtil {
  static JWT getJWT() {
    JWTBuilder builder = JWTBuilder();
    var token = builder
      ..issuer = Github.appId
      ..issuedAt = new DateTime.now()
      ..expiresAt = new DateTime.now().add(new Duration(minutes: 10))
      ..getToken();
    var signer = JWTRsaSha256Signer(privateKey: Github.privateKey);
    JWT signedToken = token.getSignedToken(signer);
    return signedToken;
  }
}
