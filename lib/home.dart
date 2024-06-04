import 'package:flutter/material.dart';
import 'package:food_onboarding/consts.dart';
import 'package:food_onboarding/details.dart';

const bgColor =  Color(0xff232227);
var shadowColor = Colors.black.withOpacity(0.4);

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: bgColor,
        appBar: AppBar(
          leading: const Icon(Icons.sort_rounded, color: Colors.white,),
          actions: const [
            Icon(Icons.notifications, color: Colors.white,),
            SizedBox(width: 10,),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.search, color: Colors.white,),
            ),
          ],
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),

        bottomNavigationBar: Container(
          color: Colors.transparent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:
              List.generate(5,
                    (index) {
                var iconList =[Icons.shopping_cart_sharp,Icons.favorite,Icons.home,Icons.category,Icons.person];
                return Transform.scale(
                        scale: 1.3,
                        child: CircleAvatar(
                          backgroundColor: index == 2 ? btnColor : Colors.transparent ,
                          radius: index == 2 ? 30 : 20,
                          child: Icon(
                          iconList[index],
                          color: Colors.white,
                          ),
                        )
                      );
          }
          ),
        ),
        ),
      
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children:[
            textWidget(text: "Hot & Fast Food", size: 32, color: Colors.white ),
            textWidget(text: "Deliveries on time", size: 18, color: Colors.white.withOpacity(0.5) ),
            const SizedBox(height: 12,),
            TabBar(
              indicatorColor: Colors.transparent,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.white.withOpacity(0.4),
              dividerColor: Colors.transparent,
              tabs: const[
                Tab(text: "Burger",),
                Tab(text: "Pizza",),
                Tab(text: "Chinese",),
                Tab(text: "Pasta",),
            ],),
            Expanded(
              child: TabBarView(
                children: [
                  screenWidget(),
                  screenWidget(),
                  screenWidget(),
                  screenWidget(),
                ],
              ),
            )
          ],
        ),
      ),
    );
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
  Widget screenWidget(){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.78,
          mainAxisExtent: 220,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
        ),
        itemCount: 4,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: ((context)=> const Details()))),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: bgColor,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.4),
                    blurRadius: 8,
                    spreadRadius: 1,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/i$index.png',
                    width: 120,
                    height: 120,
                  ),
                  textWidget(text: "Cheese Burger", size: 12, color: Colors.white),
                  const SizedBox(height: 10,),
                  textWidget(text: "Hot Burger", size: 12, color: Colors.white.withOpacity(0.5)),
                  const SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      textWidget(text: "\$55", size: 12, color: Colors.white),
                      const Icon(Icons.shopping_cart_sharp, color: Colors.white,),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
