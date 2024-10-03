import 'package:flutter/material.dart';
import 'package:sample/main.dart';
import 'package:sample/services/functions_services.dart';
import 'package:sample/signup.dart';

class Signin extends StatefulWidget {
   Signin({super.key, required this.selectedOption});
  final int selectedOption;

  @override
  State<Signin> createState() => _SigninState();
}

bool isChecked = false;

class _SigninState extends State<Signin> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  FunctionServices functionService = FunctionServices();
  bool obscure = true;
  bool loading=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//         backgroundColor: Colors.purple,
//
//         body: SingleChildScrollView(
//         child:Column(
//         children: <Widget>[
//
//         const SizedBox(height: 200),
//            Container(
//               width: double.infinity,
//               height: 50,
//               color: Colors.purple,
//               child:const  Center(
//                 child: Text("Jidni ",style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold),
//     ),
//     ),
//     ),
//             Container(
//                width: double.infinity,
//                height: 50,
//                color: Colors.purple,
//                child:const  Center(
//                 child: Text("جدني ",style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold),
//                ),
//               ),
//               ),
//           const SizedBox(height: 50),
//
//
//             const Padding(
//               padding:  EdgeInsets.only(right: 250),
//               child:  Text(
//                 "E-mail address",
//                 style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                   fontSize: 22,
//                   color: Colors.white,
//                 ),
//               ),
//             ),
//            const SizedBox(height: 18),
//             Container(
//               height: 45,
//               padding: const EdgeInsets.only(left: 10),
//               decoration: BoxDecoration(
//                 color: Colors.grey[200],
//                 borderRadius: BorderRadius.circular(30),
//               ),
//               child: TextField(
//                 controller: emailController,
//                 decoration: const InputDecoration(
//                   border: InputBorder.none,
//                   hintText: 'Email',
//                 ),
//               ),
//             ),
//           const SizedBox(height: 20),
//          const  Padding(
//             padding:  EdgeInsets.only(right: 250),
//             child:  Text(
//               "Enter password",
//               style: TextStyle(
//                 fontWeight: FontWeight.bold,
//                 fontSize: 22,
//                 color: Colors.white,
//               ),
//             ),
//           ),
//           const SizedBox(height: 18),
//           Container(
//             height: 45,
//             padding: const EdgeInsets.only(left: 10),
//             decoration: BoxDecoration(
//               color: Colors.grey[200],
//               borderRadius: BorderRadius.circular(30),
//             ),
//             child: TextField(
//               controller: passwordController,
//               decoration: const InputDecoration(
//                 border: InputBorder.none,
//                 hintText: 'Password',
//               ),
//             ),
//           ),
//           const SizedBox(
//             height: 5,
//           ),
//
//           Row(
//           children: [
//           Padding(
//             padding: const EdgeInsets.only(left:18),
//             child: Checkbox(
//               checkColor: Colors.white,
//               value: isChecked,
//               onChanged: (bool? value) {
//                 setState(() {
//                   isChecked = value!;
//                 });
//               },
//             ),
//           ),
//           const Text(
//             "Remember me",
//             style: TextStyle(
//               fontSize: 14,
//               color: Colors.black,
//             ),
//           ),
//             const Padding(
//               padding:  EdgeInsets.only(left: 120),
//               child: Text(
//                 "Forget Password?",
//                 style: TextStyle(
//                   fontSize: 12,
//                   color: Colors.white,
//                   decoration: TextDecoration.underline,
//                   decorationColor: Colors.white,
//
//                 ),
//
//               ),
//             ),
//         ],
//
//
//           ),
//
//           const SizedBox(
//         height: 20,
//       ),
//
//            ElevatedButton(onPressed: (){
// functionService.signInParent(context: context, email: emailController.text, password: passwordController.text,);
//            },child:const  Padding(
//              padding:  EdgeInsets.all(12.0),
//              child: Text("Sign in"),
//            )),
//
//
//         ],
//         ),
//         ),

      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 30.0, left: 25, right: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                    child: Image.asset(
                  "images/logo.png",
                  width: 250,
                  height: 250,
                )),
                const Text(
                  'Welcome Back',
                  style: TextStyle(
                    color: Colors.purple,
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const Text(
                  'Let\'s get started by filling out the form below.',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 60,
                  child: TextFormField(
                    maxLines: 1,
                    controller: emailController,
                    autofocus: false,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      labelStyle: const TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.grey,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.purple,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 60,
                  child: TextFormField(
                    scrollPadding: EdgeInsets.all(10),
                    maxLines: 1,
                    controller: passwordController,
                    autofocus: false,
                    obscureText: obscure,
                    decoration: InputDecoration(
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            obscure = !obscure;
                          });
                        },
                        child: obscure
                            ? const Icon(Icons.no_encryption_gmailerrorred)
                            : const Icon(Icons.lock),
                      ),
                      labelText: 'Password',
                      labelStyle: const TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.grey,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.purple,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    keyboardType: TextInputType.visiblePassword,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () async {
                    if(loading==false) {
                      setState(() {
                        loading=true;
                      });
                      await functionService.signIn(
                        context: context,
                        password: passwordController.text,
                        email: emailController.text,
                        selectedOption: widget.selectedOption,
                      );

                      setState(() {
                        loading=false;
                      });
                    }
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(.6),
                          offset: const Offset(0.0, 2.0), //(x,y)
                          blurRadius: 1.0,
                        ),
                      ],
                      color: Colors.purple,
                    ),
                    child:loading?const Center(child: CircularProgressIndicator(color: Colors.white,),): const Text(
                      "Sign In",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        fontSize: 20,
                        letterSpacing: 0.6,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    const Text(
                      "Don't have an account?  ",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                        fontSize: 15,
                        letterSpacing: 0.6,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Signup(),
                          ),
                        );
                      },
                      child: const Text(
                        "Sign Up here",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.purple,
                          fontSize: 15,
                          letterSpacing: 0.6,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
