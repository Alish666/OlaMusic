import 'package:flutter/material.dart';
import 'package:olamusic/widgets/RecomendedList.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ProfileAuthScreen extends StatefulWidget {
  @override
  _ProfileAuthScreenState createState() => _ProfileAuthScreenState();
}

class _ProfileAuthScreenState extends State<ProfileAuthScreen> {
  String _imageUrl;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(249, 247, 243, 1),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromRGBO(249, 247, 243, 1),
        title: Center(
          child: Text(
            "oLA",
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Home",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 36),
                  ),
                  Container(
                    child: Text(
                      "2",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(9)),
                    padding:
                        EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Padding(
                child: RecomendedList(),
                padding: EdgeInsets.only(left: 16, right: 16),
              ),
              TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.teal[700]),
                onPressed: () => _googleSignIn(),
                child: Text(
                  "Sign in with Google",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              (_imageUrl == null || _imageUrl.isEmpty)
                  ? CircularProgressIndicator()
                  : Image.network(_imageUrl),
              TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.teal[700]),
                onPressed: () async {
                  await FirebaseAuth.instance.signOut().then((value) {
                    setState(() {
                      _imageUrl = null;
                    });
                  });

                  print(_imageUrl);
                },
                child: Text(
                  "Sign out",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<UserCredential> _googleSignIn() async {
    final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
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
    final firebaseInstance =
        await firebaseAuth.signInWithCredential(credential);
    print(firebaseInstance.user.uid.toString());
    setState(() {
      _imageUrl = firebaseInstance.user.photoURL;
    });
    print(_imageUrl);

    // Once signed in, return the UserCredential
    return firebaseInstance;
  }
}
