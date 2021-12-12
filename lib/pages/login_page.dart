import 'package:flutter/material.dart';
import 'package:flutter_30_days_challenge/utils/my_routes.dart';

class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/images/login_image.png"),
            const SizedBox(height: 20,),
            const Text("Welcome",
              style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20,),
            Padding(
                padding: EdgeInsets.symmetric(vertical: 16,horizontal: 32),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter username",
                      label: Text('Username')
                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Enter password",
                        label: Text('Password')
                    ),
                  ),
                  SizedBox(height: 40,),
                  ElevatedButton(
                    style: TextButton.styleFrom(
                      minimumSize: Size(150,40)
                    ),
                      onPressed: (){
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                      },
                      child: Text('Login'))
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}
