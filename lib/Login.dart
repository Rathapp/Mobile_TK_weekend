
import 'package:flutter/material.dart';

import 'home_page.dart';

class LogIn extends StatelessWidget {
  // const LogIn({super.key});
 final TextEditingController _email = TextEditingController();
 final TextEditingController _password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(

              controller: _email,
              keyboardType: TextInputType.text,
              obscureText: false,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email),
                hintText: "Email",

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                )


            ),

            ),
            SizedBox(height: 20,),
            TextField(
              controller: _password,
              obscureText: true,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: "Password",


            )
            ),
            SizedBox(height: 20,),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: (){
                    // print("Email: ${_email.text}");
                    // print("Password: ${_password.text}");
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> HomePage()));
                  },
                style: ElevatedButton.styleFrom(

                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),

                  )

              ),
                  child: Text("Login",style: TextStyle(color: Colors.white),)
              ),
            )
          ],

      ),
      )
    );
  }
}
