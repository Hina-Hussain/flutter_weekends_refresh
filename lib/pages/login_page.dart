import 'package:flutter/material.dart';
import 'package:flutter_30_days_challenge/utils/my_routes.dart';

class LoginPage extends StatefulWidget {

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changedValue = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/images/login_image.png"),
            const SizedBox(height: 20,),
             Text("Welcome $name",
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
                    onChanged: (value){
                      name = value;
                      setState(() {
                      });
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Enter password",
                        label: Text('Password')
                    ),
                  ),
                  const SizedBox(height: 40,),
                  InkWell(
                    onTap: () async {
                      setState(() {
                        changedValue = true;
                      });
                      await Future.delayed(Duration(seconds: 1));
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      alignment: Alignment.center,
                      width: changedValue ? 50 : 150,
                      height: 50,
                      child: changedValue ? Icon(Icons.done,color: Colors.white ,) :
                      Text('Login',style: TextStyle(fontSize: 20,color: Colors.white),),
                      decoration: BoxDecoration(
                          color: Colors.deepPurple,
                        borderRadius: changedValue ? BorderRadius.circular(50): BorderRadius.circular(8)
                      ),
                    ),
                  ),

                  /*ElevatedButton(
                    style: TextButton.styleFrom(
                      minimumSize: Size(150,40)
                    ),
                      onPressed: (){
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                      },
                      child: Text('Login')
                  )*/
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}
