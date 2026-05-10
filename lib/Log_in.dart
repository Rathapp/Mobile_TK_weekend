
import 'package:flutter/material.dart';

import 'home_page.dart';

class LogIn extends StatelessWidget {
  LogIn({super.key});
 final TextEditingController _emailController = TextEditingController();
 final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("LogIn",style: TextStyle(fontSize: 30,fontWeight: FontWeight(600),color: Colors.blue),),
                  SizedBox(height: 20,),
                  TextField(
                    controller: _emailController,
                    style: TextStyle(fontSize: 20,color: Colors.blue),
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.blue,width: 2),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.blue,width: 2),
                      ),
                      hintText: "Enter Your Email",
                      // labelText: "Email",
                      prefixIcon: Icon(Icons.email,color: Colors.blue),
                      // icon: Icon(Icons.email),
                      // suffixIcon: Icon(Icons.email),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.blue,width: 2),

                      )

                    )

                  ),
                  SizedBox(height: 20,),
                  TextField(
                    controller: _passwordController,
                      obscureText: true,
                      style: TextStyle(fontSize: 20,color: Colors.blue),
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.blue,width: 2),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.blue,width: 2),
                          ),
                          hintText: "Enter Your Password",
                          // labelText: "Email",
                          prefixIcon: Icon(Icons.key,color: Colors.blue),
                          // icon: Icon(Icons.email),
                          suffixIcon: Icon(Icons.visibility,color: Colors.blue),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.blue,width: 2),

                          )

                      )

                  ),
                  SizedBox(height: 20,),

                  CircularProgressIndicator(),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    child: ElevatedButton(
                        onPressed: (){
                          print("Email : ${_emailController.text}");
                          print("Password : ${_passwordController.text}");
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> HomePage()));
                        },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    ),
                        child: Text("Log In",style: TextStyle(fontSize: 20,color: Colors.white),)
                    ),
                  )
                ],
              ),
            )
          ,
          ),
        ),
      ),
    );
  }
}
