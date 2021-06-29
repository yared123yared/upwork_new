import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

class SocialAuth {
  static SocialAuth _socialAuth;

  factory SocialAuth() => _socialAuth ?? SocialAuth._();

  SocialAuth._();

  /*Future<bool> doFaceBookLogin({bool isLogout = false}) async {
    final facebookLogin = FacebookLogin();
    facebookLogin.loginBehavior = FacebookLoginBehavior.webOnly;
    bool isLogin = false;
    if (!isLogout) {
      final result = await facebookLogin.logIn(['email']);
      final token = result.accessToken.token;
      final response = await api.dio.get('https://graph.facebook.com/v2.12/me?fields=name,first_name,last_name,email,picture&access_token=$token');
      Log.v("Facebook responde : $response");
      if (response.statusCode == 200) {
        var result = FacebookLoginResponse.fromJson(json.decode(response.data));
        isLogin = true;
        email = result.email;
        image = result.image;
        name = result.name;
        this.token = result.id;
      }
    } else {
      bool isSigned = await facebookLogin.isLoggedIn;
      if (isSigned) {
        facebookLogin.logOut();
      }
    }
    return isLogin;
  }*/

  Future<dynamic> signInWithFacebook({bool isLogin = true}) async {
    final facebookLogin = FacebookLogin();
    if(isLogin){
      // Trigger the sign-in flow
      facebookLogin.loginBehavior = FacebookLoginBehavior.webOnly;
      final result = await facebookLogin.logIn(['email']);
      // Create a credential from the access token
      final FacebookAuthCredential facebookAuthCredential =
      FacebookAuthProvider.credential(result.accessToken.token);
      // Once signed in, return the UserCredential
      try{
        return await FirebaseAuth.instance
            .signInWithCredential(facebookAuthCredential);
      }catch(e){
        return e;
      }
    }else{
      facebookLogin.logOut();
    }
    return null;
  }

  Future<dynamic> appleSignIn() async {
    final _credential = await SignInWithApple.getAppleIDCredential(
      scopes: [
        AppleIDAuthorizationScopes.email,
        AppleIDAuthorizationScopes.fullName,
      ],
    );
    final oAuthProvider = OAuthProvider('apple.com');
    final credential = oAuthProvider.credential(
      idToken: _credential.identityToken,
      accessToken:_credential.authorizationCode,
    );
    try{
      return await FirebaseAuth.instance
          .signInWithCredential(credential);
    }catch(e){
      return e;
    }
  }

  /*Future<bool> doGoogleLogin({bool isLogout = false}) async {
    bool isLogin = false;
    GoogleSignIn _googleSignIn = GoogleSignIn(
      scopes: [
        'email',
      ],
    );
    try {
      if (!isLogout) {
        var result = await _googleSignIn.signIn();
        if (result != null) {
          email = result.email;
          name = result.displayName;
          token = result.id;
          image = result.photoUrl;
          isLogin = true;
        }
      } else {
        bool isSigned = await _googleSignIn.isSignedIn();
        if (isSigned) {
          var result = await _googleSignIn.signOut();
          isLogin = false;
        }
      }
    } catch (error) {
      print(error);
    }
    return isLogin;
  }*/

  Future<dynamic> signInWithGoogle({bool isLogin = true}) async {
    if(isLogin){
      // Trigger the authentication flow
      final GoogleSignInAccount googleUser = await GoogleSignIn().signIn();

      // Obtain the auth details from the request
      final GoogleSignInAuthentication googleAuth =
      await googleUser.authentication;

      // Create a new credential
      final GoogleAuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      // Once signed in, return the UserCredential
      try{
        return await FirebaseAuth.instance.signInWithCredential(credential);
      }catch(e){
        return e;
      }
    }else{
      await GoogleSignIn().signOut();
    }
    return null;
  }
}
