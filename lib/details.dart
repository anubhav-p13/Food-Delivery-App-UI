import 'package:flutter/material.dart';
import 'package:food_onboarding/home.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: const [
          Icon(Icons.shopping_cart,color: Colors.white,)
        ],
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },
          icon: const Icon(Icons.arrow_back_ios_new_rounded, color: Colors.white,),),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                textWidget(text: "Total Price", size: 14, color: Colors.white.withOpacity(0.5)),
                const SizedBox(height: 4,),
                textWidget(text: "\$100", size: 18, color: Colors.white),
              ],
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 12),
              decoration: const BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.only(topRight: Radius.circular(16), bottomRight: Radius.circular(16), bottomLeft: Radius.circular(16))
              ),
              child: Row(
                children: [
                  textWidget(text: "Buy Now", size: 18, color: Colors.white),
                  const SizedBox(width: 5,),
                  const Icon(Icons.shopping_cart_sharp, color: Colors.white,),


                ],
              ),
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start ,
          children: [
            Expanded(child: Image.asset("assets/bg.png",fit: BoxFit.cover)),
            const SizedBox(height: 10,),
            textWidget(text: 'Hot & Fresh Burger', size: 24, color: Colors.white),
            const SizedBox(height: 8,),
            textWidget(text: 'We bring you the burger with cheese served with onions', size: 14, color: Colors.white.withOpacity(0.5)),
            const SizedBox(height: 22,)

          ],
        ),
      ),
    );
  }
}

Widget textWidget({required String text, required double size,required Color color}) {
  return Text(
    text,
    style: TextStyle(
      fontSize: size,
      color: color,
      fontWeight: FontWeight.bold,
    ),
  );
}