import 'package:flutter/material.dart';

import 'package:sample/organization.dart';
import 'package:sample/services/functions_services.dart';
import 'package:sample/signin.dart';
import 'signup.dart';

class Signuporganization extends StatefulWidget {
  const Signuporganization({super.key});

  @override
  State<Signuporganization> createState() => _SignuporganizationState();
}

class _SignuporganizationState extends State<Signuporganization> {
  TextEditingController OrganizationNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  bool obscure = true;
  FunctionServices functionService = FunctionServices();
  bool loading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(
              context,
            );
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 30.0, left: 25, right: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Create an Organization',
                  style: TextStyle(
                    color: Colors.purple,
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const Text(
                  'Let\'s get started by filling out the form below.',
                  style: TextStyle(
                    color: Colors.purple,
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
                    controller: OrganizationNameController,
                    autofocus: false,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: 'Organization Name',
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
                SizedBox(
                  height: 60,
                  child: TextFormField(
                    scrollPadding: EdgeInsets.all(10),
                    maxLines: 1,
                    controller: confirmPasswordController,
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
                      labelText: 'Confirm Password',
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
                    if (loading == false) {
                      setState(() {
                        loading = true;
                      });
                      await functionService.signUpOrganization(
                        context: context,
                        password: passwordController.text,
                        email: emailController.text,
                        organizationName: OrganizationNameController.text,
                        confirmPassword: confirmPasswordController.text,
                      );
                      setState(() {
                        loading = false;
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
                    child: loading
                        ? const Center(
                            child: CircularProgressIndicator(
                              color: Colors.white,
                            ),
                          )
                        : const Text(
                            "Create Account",
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
                      "Already Have an account  ",
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
                            builder: (context) =>  Signin(selectedOption: 2),
                          ),
                        );
                      },
                      child: const Text(
                        "Sign In here",
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

      // SingleChildScrollView(
      // child:Column(
      //   children: <Widget>[
      //     const SizedBox(height: 100),
      //     Container(
      //       padding: const EdgeInsets.only(left:18),
      //       width: double.infinity,
      //       height: 70,
      //       color: Colors.white,
      //       child: Text("Organization",style: TextStyle(fontSize: 30,color: Colors.purple,fontWeight: FontWeight.bold),
      //       ),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.only(right: 200),
      //       child: const Text(
      //         "Organization Name",
      //         style: TextStyle(
      //           fontWeight: FontWeight.bold,
      //           fontSize: 22,
      //           color: Colors.black,
      //         ),
      //       ),
      //     ),
      //     SizedBox(height: 18),
      //     Container(
      //       height: 45,
      //       padding: const EdgeInsets.only(left: 10),
      //       decoration: BoxDecoration(
      //         color: Colors.grey[200],
      //         borderRadius: BorderRadius.circular(30),
      //       ),
      //       child: TextField(
      //         controller: passwordController,
      //         decoration: const InputDecoration(
      //           border: InputBorder.none,
      //           hintText: 'john',
      //         ),
      //       ),
      //     ),
      //
      //     const SizedBox(height: 12),
      //     Padding(
      //       padding: const EdgeInsets.only(right: 330),
      //       child: const Text(
      //         "Email",
      //         style: TextStyle(
      //           fontWeight: FontWeight.bold,
      //           fontSize: 22,
      //           color: Colors.black,
      //         ),
      //       ),
      //     ),
      //     SizedBox(height: 18),
      //     Container(
      //       height: 45,
      //       padding: const EdgeInsets.only(left: 10),
      //       decoration: BoxDecoration(
      //         color: Colors.grey[200],
      //         borderRadius: BorderRadius.circular(30),
      //       ),
      //       child: TextField(
      //         controller: passwordController,
      //         decoration: const InputDecoration(
      //           border: InputBorder.none,
      //           hintText: 'example@email.com',
      //         ),
      //       ),
      //     ),
      //
      //     const SizedBox(height: 20),
      //     Padding(
      //       padding: const EdgeInsets.only(right: 300),
      //       child: const Text(
      //         "Password",
      //         style: TextStyle(
      //           fontWeight: FontWeight.bold,
      //           fontSize: 22,
      //           color: Colors.black,
      //         ),
      //       ),
      //     ),
      //     SizedBox(height: 18),
      //     Container(
      //       height: 45,
      //       padding: const EdgeInsets.only(left: 10),
      //       decoration: BoxDecoration(
      //         color: Colors.grey[200],
      //         borderRadius: BorderRadius.circular(30),
      //       ),
      //       child: TextField(
      //         controller: passwordController,
      //         decoration: const InputDecoration(
      //           border: InputBorder.none,
      //           hintText: 'password',
      //         ),
      //       ),
      //     ),
      //     const SizedBox(
      //       height: 5,
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.only(right: 220),
      //       child: const Text(
      //         "Confirm password",
      //         style: TextStyle(
      //           fontWeight: FontWeight.bold,
      //           fontSize: 22,
      //           color: Colors.black,
      //         ),
      //       ),
      //     ),
      //     SizedBox(height: 18),
      //     Container(
      //       height: 45,
      //       padding: const EdgeInsets.only(left: 10),
      //       decoration: BoxDecoration(
      //         color: Colors.grey[200],
      //         borderRadius: BorderRadius.circular(30),
      //       ),
      //       child: TextField(
      //         controller: passwordController,
      //         decoration: const InputDecoration(
      //           border: InputBorder.none,
      //           hintText: 'password',
      //         ),
      //       ),
      //     ),
      //     const SizedBox(
      //       height: 5,
      //     ),
      //
      //
      //     Row(
      //       children: [
      //         TextButton(
      //           onPressed: () {
      //             Navigator.of(context).push(
      //               MaterialPageRoute(builder: (context) => Signup()),
      //             );
      //           },
      //           child: Text(
      //             "<Go back",
      //             style: TextStyle(
      //               fontSize: 20,
      //               color: Colors.black,
      //               decoration: TextDecoration.underline,
      //               decorationColor: Colors.black,),
      //
      //           ),
      //         ),
      //
      //         Padding(
      //           padding: const EdgeInsets.only(left: 170),
      //           child: ElevatedButton(onPressed: (){
      //             Navigator.of(context).push(MaterialPageRoute(builder: (context) => Organization()));
      //           },child: Text("Continue")),
      //         ),
      //
      //       ],
      //     ),
      //
      //
      //
      //
      //   ],
      // ),
      // ),
    );
  }
}
