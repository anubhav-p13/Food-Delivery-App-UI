import 'package:flutter/material.dart';
import 'package:food_onboarding/consts.dart' as consts;
import 'package:food_onboarding/home.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: consts.bgColor,
      appBar: AppBar(
      elevation: 0.0,
        backgroundColor: Colors.transparent,
    ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Sign Up', style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32,
                color: Colors.black87,
              ),
              ),
              const SizedBox(height: 12,),
              Align(alignment: Alignment.center, child: Image.asset('assets/signup.png', width: 150,),),

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
                      Icons.abc,
                      color: consts.btnColor,
                    ),
                    hintText: "Enter Name",
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
                      Icons.email,
                      color: consts.btnColor,
                    ),
                    hintText: "Enter email or username",
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
                    hintText: "Enter Password",
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
                    hintText: "Confirm Password",
                    border: InputBorder.none,
                  ),

                ),
              ),
              const SizedBox(height: 12,),
              GestureDetector(
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const Home()));
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
                  child: const Text('Sign Up', style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold, color: Colors.white),),
                ),
              ),
              const SizedBox(height: 12,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already have an account?",
                    style: TextStyle(
                        color: Colors.black54),),
                  const SizedBox(width: 12,),
                  GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: const Text("Log In",
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
              const SizedBox( height: 12,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  // Handle Google signup here
                },
                child: Image.asset('assets/google.png', width: 40, height: 40,),
              ),
              GestureDetector(
                onTap: () {
                  // Handle Facebook signup here
                },
                child: Image.asset('assets/fb.png', width: 40, height: 40,),
              ),
              GestureDetector(
                onTap: () {
                  // Handle other signup here
                },
                child: Image.asset('assets/x.png', width: 40, height: 40,),
              ),
            ],
          ),


            ],
          ),
        ),
      ),
    );
  }
}
