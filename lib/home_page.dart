import 'package:flutter/material.dart';
import 'package:fluuter_weekend/Log_in.dart';

import 'Screen/about_screen.dart';
import 'Screen/home_screen.dart';
import 'Screen/profile_screen.dart';
import 'Screen/search_screen.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // const HomePage({super.key});
  final url ="https://oceanview4luz.wordpress.com/wp-content/uploads/2013/01/sunset-for-front-room-i.jpg";

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  final List<Widget> _screen = [HomeScreen(),SearchScreen(),AboutScreen(),ProfileScreen()];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      // appBar: buildAppBar(context),
      // drawer: buildDrawer(),
      endDrawer: Drawer(),
      body: _screen[_currentIndex],
      // buildBody(),
      floatingActionButton: buildFloatingActionButton(),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
      bottomNavigationBar: buildBottomAppBar(),
      // buildBottomNavigationBar(),

    );


  }

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      onTap: (index){
        setState(() {
          _currentIndex= index;
        });

      },
      currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        // fixedColor: Colors.white,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        iconSize: 30,
        items: [
      BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
      BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.abc_outlined),label: "About"),
      BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),

    ]);
  }

  BottomAppBar buildBottomAppBar() {
    return BottomAppBar(
      height: 80,
      shape: CircularNotchedRectangle(),
      color: Colors.white,
      elevation: 10,
      
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          buildBottonItem(icon: Icons.home,index: 0,label: "Home",onTap: (){
            setState(() {
              _currentIndex = 0;
            });
          }),
          buildBottonItem(icon: Icons.search,index: 1,label: "Search",onTap: (){
            setState(() {
              _currentIndex = 1;
            });
          }),
          buildBottonItem(icon: Icons.settings,index: 2,label: "Setting",onTap: (){
            setState(() {
              _currentIndex = 2;
            });
          }),
          buildBottonItem(icon: Icons.person,index: 3,label: "Profile",onTap: (){
            setState(() {
              _currentIndex = 3;
            });
          }),

          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> LogIn()));
            },
            child: CircleAvatar(
              radius: 15,
              backgroundImage: AssetImage("assets/images/dd.jpeg"),),
          )

        ],
      ),
    );
  }

  InkWell buildBottonItem({required IconData icon, required int index, String? label,Function? onTap}) {
    return InkWell(

      onTap: onTap as void Function()?,
      borderRadius: BorderRadius.circular(10),
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: Column(children: [Icon(icon,color: index == _currentIndex? Colors.blue: Colors.black,),
          SizedBox(height: 3,),
            Text(label!,style: TextStyle(color: index == _currentIndex? Colors.blue: Colors.black),)]),
      ),
    );
  }

  FloatingActionButton buildFloatingActionButton() {
    return FloatingActionButton(
      backgroundColor: Colors.pink,
      onPressed: (){},
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50) ,),
      child: Icon(Icons.add,color: Colors.white,size:30 ,),
  );
  }

  Drawer buildDrawer() {
    return Drawer(
      child: SafeArea(
          child: Column(
            children: [
              DrawerHeader(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                      color: Colors.grey,
                        borderRadius: BorderRadius.circular(80),
                        image: DecorationImage(
                          image: AssetImage("assets/images/dd.jpeg"),
                          fit: BoxFit.cover,
                        )
                      ),

                    ),
                    SizedBox(width: 10,),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text("Hello, Ratha",style: TextStyle(fontSize: 20,fontWeight: FontWeight(600)),),
                      Text("Edit Profile")
                    ],)


        ],
                )
            ),
              ListTile(
                leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: (){},
              trailing: Icon(Icons.chevron_right),),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                onTap: (){},),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                onTap: (){},),
              Divider(),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                onTap: (){},),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                onTap: (){},),

          ])
      )
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      leading: IconButton(onPressed: (){
        // _scaffoldKey.currentState?.openDrawer();
        Navigator.pop(context);

      }, icon: Icon(Icons.chevron_left)),
      title: Text("Home Page",style: TextStyle(fontSize: 25,color: Colors.white),),
      backgroundColor: Colors.pink,
      centerTitle: true,
      actions: [Icon(Icons.settings,),SizedBox(width: 20,),Icon(Icons.person),SizedBox(width: 10,)],
    );
  }

  Widget buildBody() {
    return SingleChildScrollView(
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
                  )),

                    ]
              ),
              SizedBox(height: 20,),
            ]
        ),
      ),
    );
  }
}
