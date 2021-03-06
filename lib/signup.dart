import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

import 'package:login_signup_screen/login.dart';
import 'package:login_signup_screen/ticketCard.dart';

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 10,
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          height: MediaQuery.of(context).size.height - 50,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text(
                    "Sign up",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Create an account, It's free ",
                    style: TextStyle(fontSize: 15, color: Colors.grey[700]),
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      // controller: _username,
                      decoration: InputDecoration(labelText: 'First Name'),
                      // onChanged: (value) => username = value,
                    ),
                  ),
                  Padding(padding: const EdgeInsets.all(20)),
                  Expanded(
                    child: TextField(
                      // controller: _username,
                      decoration: InputDecoration(labelText: 'Surname'),
                      // onChanged: (value) => username = value,
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      // controller: _username,
                      decoration: InputDecoration(labelText: 'Company Name'),
                      // onChanged: (value) => username = value,
                    ),
                  ),
                  Padding(padding: const EdgeInsets.all(20)),
                  Expanded(
                    child: TextField(
                      // controller: _username,
                      decoration: InputDecoration(labelText: 'Branch Name'),
                      // onChanged: (value) => username = value,
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      // controller: _username,
                      decoration: InputDecoration(labelText: 'Address'),
                      // onChanged: (value) => username = value,
                    ),
                  ),
                  Padding(padding: const EdgeInsets.all(20)),
                  Expanded(
                    child: TextField(
                      // controller: _username,
                      decoration: InputDecoration(labelText: 'City'),
                      // onChanged: (value) => username = value,
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      // controller: _username,
                      decoration: InputDecoration(labelText: 'Region'),
                      // onChanged: (value) => username = value,
                    ),
                  ),
                  Padding(padding: const EdgeInsets.all(20)),
                  Expanded(
                    child: TextField(
                      // controller: _username,
                      decoration: InputDecoration(labelText: 'Branch Name'),
                      // onChanged: (value) => username = value,
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      // controller: _username,
                      decoration: InputDecoration(labelText: 'Password'),
                      obscureText: true,
                      // onChanged: (value) => username = value,
                    ),
                  ),
                  Padding(padding: const EdgeInsets.all(20)),
                  Expanded(
                    child: TextField(
                      // controller: _username,
                      decoration: InputDecoration(labelText: 'Repeat Password'),
                      obscureText: true,
                      // onChanged: (value) => username = value,
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.only(top: 3, left: 3),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border(
                      bottom: BorderSide(color: Colors.black),
                      top: BorderSide(color: Colors.black),
                      left: BorderSide(color: Colors.black),
                      right: BorderSide(color: Colors.black),
                    )),
                child: MaterialButton(
                  minWidth: double.infinity,
                  height: 60,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            //if user info is true open ticket card
                            builder: (context) => MainTicketCard()));
                  },
                  color: Color(0xff9c1156),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text(
                    "Sign up",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),

                  // child: RichText(
                  //   text: TextSpan(
                  //       style: DefaultTextStyle.of(context).style,
                  //       children: <TextSpan>[TextSpan(text: 'Sign Up')]),
                  // )
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Already have an account?"),
                  // Text(
                  //   " Login",
                  //   style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                  // )
                  RichText(
                    text: TextSpan(children: <TextSpan>[
                      TextSpan(
                          text: 'Log In',
                          style: new TextStyle(
                            color: Colors.pink,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MainLoginPage()));
                            })
                    ]),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

// we will be creating a widget for text field
Widget inputFile({label, obscureText = false}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        label,
        style: TextStyle(
            fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black87),
      ),
      SizedBox(
        height: 5,
      ),
      TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey[400]),
            ),
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey[400]))),
      ),
      SizedBox(
        height: 10,
      )
    ],
  );
}
