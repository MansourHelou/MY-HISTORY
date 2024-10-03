import 'package:flutter/material.dart';
import 'package:sample/splash_screen.dart';
import 's,parent.dart';
import 's,organization.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => const SplashScreen()),
                (route) => false);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
              child: Image.asset(
            "images/logo.png",
            width: 250,
            height: 250,
          )),
          // Container(
          //   width: double.infinity,
          //   height: 30,
          //   color: Colors.white,
          //   child: Center(
          //     child: Text("Choose your account type ",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),
          //     ),
          //   ),
          // ),
          const SizedBox(
            height: 20,
          ),

          // ElevatedButton(onPressed: (){
          //   Navigator.of(context).push(MaterialPageRoute(builder: (context) => Signupparent()));
          // },child: Padding(
          //   padding: const EdgeInsets.only(right: 110,left: 110,top: 40,bottom: 40),
          //   child: Text("Parent",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold)),
          // )),
          // const SizedBox(
          //   height: 40,
          // ),
          //
          // ElevatedButton(onPressed: (){
          //   Navigator.of(context).push(MaterialPageRoute(builder: (context) => Signuporganization()));
          // },child: Padding(
          //   padding: const EdgeInsets.only(right: 80,left: 80,top: 40,bottom: 40),
          //   child: Text("Organization",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold)),
          // )),

          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const Signupparent(),
                ),
              );
            },
            child: Container(
              height: 70,
              width: 200,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 3,
                  color: Colors.purple,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              alignment: Alignment.center,
              child: const Text(
                "Parent",
                style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple,
                ),
              ),
            ),
          ),
          const SizedBox(height: 30,),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const Signuporganization(),
                ),
              );
            },
            child: Container(
              height: 70,
              width: 200,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 3,
                  color: Colors.purple,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              alignment: Alignment.center,
              child: const Text(
                "Organization",
                style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
