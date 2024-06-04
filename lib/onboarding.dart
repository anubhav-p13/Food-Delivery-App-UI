import 'package:flutter/material.dart';
import 'package:food_onboarding/consts.dart';
import 'package:food_onboarding/login_screen.dart';
import 'package:food_onboarding/screen_widget.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  int pageIndex = 0;
  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: pageIndex);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;


    return Scaffold(
      body:Stack(
        children: [
          PageView.builder(

            onPageChanged: (value){
              setState(() {
                pageIndex = value;
              });
            },

            itemCount: 3,
            controller: pageController,
            itemBuilder: ((context, index){
            return ScreenWidget(index: pageIndex,) ;
          }),
          ),
          Positioned(
            bottom: 0,
            child: SizedBox(
              height: size.height * 0.20,
              width: size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                        3,
                        (index) => Container(
                          margin: const EdgeInsets.symmetric(horizontal: 8),
                      height: 8, width: 8, decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: pageIndex == index ? btnColor : bgColor,
                    ),
                    )),
                  ),

                  SizedBox(
                    height: 50,
                    width: size.width-100,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: btnColor,
                      ),
                      onPressed:pageIndex == 2? (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const LoginScreen()));
                      }: () {
                        pageController.nextPage(duration: const Duration(milliseconds: 600), curve: Curves.easeIn);
                      }, child:  Text(
                      pageIndex == 2 ? "PROCEED" : "NEXT", style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),),),
                  )
                ],
              ),
            ),
          ),

          if(pageIndex != 2)
          Positioned(
            right: 30,
            top: 30 ,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: btnColor,
              ),
              onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const LoginScreen()));
                // navigate to other screen
              }, child: const Text("Skip", style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
              color: Colors.white
            ),),),
          )
        ],
      )
    );
  }
}
