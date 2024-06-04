import 'package:flutter/material.dart';
import 'package:food_onboarding/consts.dart' as consts;
import 'package:food_onboarding/home.dart';
import 'package:food_onboarding/signup_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: consts.bgColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Container(
            padding: const EdgeInsets.all(16.0),
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Login', style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                  color: Colors.black87,
                ),
                ),
                const SizedBox(height: 12,),
                Align(alignment: Alignment.centerRight, child: Image.asset('assets/login.png', width: 230,),),
                const SizedBox(height: 12,),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 4),
                  width: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.grey.withOpacity(0.2),
                  ),
                  child: const TextField(
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.email,
                        color: consts.btnColor,
                      ),
                      hintText: "Enter phone or email",
                      border: InputBorder.none,
                    ),
                  ),
                ),
                const SizedBox(height: 12,),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 4),
                  width: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.grey.withOpacity(0.2),
                  ),
                  child: const TextField(
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                          Icons.lock,
                          color: consts.btnColor,
                      ),
                      hintText: "Enter password",
                      border: InputBorder.none,
                    ),
                  ),
                ),
                const SizedBox(height: 12,),
                GestureDetector(
                  onTap: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const Home()));
                  },
                  child: Container(
                    width: 400,
                    height: 50,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: consts.btnColor,
                    ),
                    child: const Text('Login', style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold, color: Colors.white),),
                  ),
                ),
                const SizedBox(height: 12,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have an account?",
                      style: TextStyle(
                          color: Colors.black54),),
                    const SizedBox(width: 12,),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context, MaterialPageRoute(builder: ((context)=> const SignupScreen())),);
                      },
                      child: const Text("Signup",
                        style: TextStyle(
                          color: consts.btnColor, fontWeight: FontWeight.bold,
                        ),),
                    ),
                  ],
                ),
                const SizedBox( height: 12,),
                const Row(
                  children: [
                    Expanded(
                        child: Divider(
                      color: Colors.grey,
                    )),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                      child: Text("OR",
                        style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ),
                    Expanded(
                        child: Divider(
                      color: Colors.grey,
                    )),
                  ],
                ),
                const SizedBox(height: 12),
                Container(
                  padding: const EdgeInsets.all(12),
                  width: 400,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey.withOpacity(0.4),
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        'assets/google.png',
                        width: 40,
                        height: 40,),
                      const SizedBox(width: 12),
                      const Text("Continue with Google",
                        style: TextStyle(
                        color: Colors.black87,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                      ),)
                    ],
                  ),
                ),
                const SizedBox(height: 12),
                Container(
                  padding: const EdgeInsets.all(12),
                  width: 400,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey.withOpacity(0.4),
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        'assets/fb.png',
                        width: 60,
                        height: 38,),
                      const SizedBox(width: 12),
                      const Text("Continue with Facebook",
                        style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),)
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }
}
