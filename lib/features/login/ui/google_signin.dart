import 'package:google_sign_in/google_sign_in.dart';

class GoogleSignInProvider {
  final GoogleSignIn googleSignIn = GoogleSignIn(
    clientId:
        'http://548773310863-hekdu5c9s3bm7865oj9gfj6sovfjgv2p.apps.googleusercontent.com/',
  );

  Future<GoogleSignInAccount?> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await googleSignIn.signIn();
      return googleUser;
    } catch (error) {
      print(error);
      return null;
    }
  }

  Future<void> signOut() async {
    await googleSignIn.signOut();
  }
}
