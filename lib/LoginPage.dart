import 'package:flutter/material.dart';
import 'package:loginportal/Register.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/login.png'), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 35, top: 130),
              child: Text(
                'Welcome\n Back . . !',
                style: TextStyle(color: Colors.white, fontSize: 33),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.5,
                  right: 35,
                  left: 35,
                ),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        label: Text('Email Address',
                            style: TextStyle(
                                fontSize: 20, color: Color(0XFF4C505B))),
                        hintText: 'Email',
                        hintStyle: TextStyle(fontSize: 20),
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 3.0, color: Color(0XFF4C505B)),
                            borderRadius: BorderRadius.circular(10)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        label: Text('Password',
                            style: TextStyle(
                                fontSize: 20, color: Color(0XFF4C505B))),
                        hintText: 'Enter your Password',
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 3.0, color: Color(0XFF4C505B)),
                            borderRadius: BorderRadius.circular(10)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    SizedBox(height: 50),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Sign In',
                          style: TextStyle(
                            fontSize: 27,
                            fontWeight: FontWeight.w700,
                            color: Color(0XFF4C505B),
                          ),
                        ),
                        CircleAvatar(
                          radius: 25,
                          backgroundColor: Color(0XFF4C505B),
                          child: Icon(
                            Icons.arrow_forward_ios_sharp,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 50),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => RegisterPage()));
                            },
                            child: Text('Sign Up',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Color(0XFF4C505B),
                                    decoration: TextDecoration.underline))),
                        TextButton(
                            onPressed: () {},
                            child: Text('Forget Password',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Color(0XFF4C505B),
                                    decoration: TextDecoration.underline))),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
