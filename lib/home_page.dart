import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  final url ="https://oceanview4luz.wordpress.com/wp-content/uploads/2013/01/sunset-for-front-room-i.jpg";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildBody(),
    );
  }
  Widget buildBody() {
    return SafeArea(
      child: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.favorite_border, size: 34,
                      color: Colors.indigoAccent,),
                    Text("Hart", style: TextStyle(fontSize: 34),)
                  ]),
              Image.asset("assets/images/dd.jpeg", width: 200,
                height: 200,
                fit: BoxFit.cover,),
              SizedBox( height: 20),
              Text("Welcom to Flutter dfgdf dfgdfhfg edgdfgdfhgf dsfdgdfh", style: TextStyle(
                  fontSize: 28, color: Colors.red, fontWeight: FontWeight(400))
              ),
              Spacer(),
              Stack(
                clipBehavior: Clip.none,
                children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(100),
                    // border: Border.all(color: Colors.yellow, width: 2),

                  )
                  ,
                  child: Icon(Icons.notification_add_outlined,size: 50,),
                ),
                  Positioned(
                    top: -5,
                    right: -10,
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(color: Colors.white, width: 2),

                      ),
                      child: Center(child: Text("5", style: TextStyle(fontSize: 20, color: Colors.white,fontWeight: FontWeight(600)),))
                  ))
                    ]
              ),
              SizedBox(height: 20,),

            ]
        ),
      ),
    );
  }
}
