import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:snapbit/components/google_sign_in.dart';
import 'package:snapbit/screens/comments.dart';
import 'package:snapbit/screens/index.dart';

import 'home.dart';

class LoginScreen extends StatefulWidget {

  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  @override
  void initState() {
    FirebaseAuth.instance
        .userChanges()
        .listen((User? user) {
      if (user == null) {
        print('User is currently signed out!');
      } else {
        Navigator.push(context, MaterialPageRoute(builder: (context) => const IndexPage()));
      }
    });

    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body:Center(
        child: Column(
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.height*0.08,),
                    Text('Welcome to Snapbit!',style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    ),),
                    SizedBox(height: MediaQuery.of(context).size.height*0.05,),
                    Lottie.asset('assets/animations/rebound.json',
                      width: MediaQuery.of(context).size.width*0.9,
                      height: MediaQuery.of(context).size.height*0.3
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height*0.4,
                    ),
                    Container(
                      color: Color(0xff1355cd),
                      height: MediaQuery.of(context).size.height*0.06,
                      width: MediaQuery.of(context).size.width*0.9,
                      child: OutlinedButton.icon(
                        onPressed: () {
                          final provider = Provider.of<GoogleSignInProvider>(context,listen: false);
                          provider.googleLogin();
                        },
                        label: Text('Login with Google Account',style: TextStyle(color: Colors.white),),
                        icon: Image(image: AssetImage('assets/g.png'),width: 30,),

                      )
                    ),
                  ],
                ),
      )

    );
  }
}
