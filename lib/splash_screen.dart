import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample/signin_option.dart';
import 'signup.dart';
import 'signin.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
              child: Image.asset(
            "images/logo.png",
            width: 200,
            height: 200,
          )),
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const Signup()));
            },
            child: Container(
              height: 40,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              alignment: Alignment.center,
              child: const Text(
                "Sign up",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Already have an account?",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const SignInOption(),
                    ),
                  );
                },
                child: const Text(
                  "Sign in",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          //
          //  const SizedBox(height: 300),
          //  Container(
          //    width: double.infinity,
          //    height: 30,
          //    color: Colors.purple,
          //    child: Center(
          //      child: Text("Jidni ",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),
          //                ),
          //    ),
          //  ),
          //  Container(
          //    width: double.infinity,
          //    height: 30,
          //    color: Colors.purple,
          //    child: Center(
          //      child: Text("جدني ",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),
          //      ),
          //    ),
          // ),
          //  const SizedBox(height: 40),
          //  ElevatedButton(onPressed: (){
          //    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Signup()));
          //  },child: Text("Sign up")),
          //  const SizedBox(height: 10),
          //  Row(
          //    children: [
          //      Padding(
          //        padding: const EdgeInsets.only(left: 50),
          //        child: Text('Already have an account?',style: TextStyle(fontSize: 20,color: Colors.white),),
          //      ),
          //      TextButton(
          //        onPressed: () {
          //          Navigator.of(context).push(
          //            MaterialPageRoute(builder: (context) => Signin()),
          //          );
          //        },
          //        child: Text(
          //          "Sign in",
          //          style: TextStyle(
          //            fontSize: 20,
          //            color: Colors.white,
          //            decoration: TextDecoration.underline,
          //            decorationColor: Colors.white,),
          //
          //        ),
          //      ),

          //ElevatedButton(onPressed: (){
          // Navigator.of(context).push(MaterialPageRoute(builder: (context) => Signin()));
          //}, child: Text("Sign in")),
          //   ],
          // ),
        ],
      ),
    );
  }
}
