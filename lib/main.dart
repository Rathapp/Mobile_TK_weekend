import 'package:flutter/material.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
final url ="https://oceanview4luz.wordpress.com/wp-content/uploads/2013/01/sunset-for-front-room-i.jpg";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children:[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                  Icon(Icons.favorite_border,size: 34,color: Colors.indigoAccent,), Text("Hart",style: TextStyle(fontSize: 34),)]),
                Image.asset("assets/images/dd.jpeg", width: 200,height: 200,fit: BoxFit.cover,),
               Text("Welcom to Flutter", style: TextStyle(fontSize: 28,color: Colors.red,fontWeight: FontWeight(400))),
              ]
          ),
      ),
      )
    );
  }
}
