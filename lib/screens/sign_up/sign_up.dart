
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

import 'email_sign_up.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key, required this.toggleView}) : super(key: key);
  final Function toggleView;

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 36),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Welcome To Expenser",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24)),
              Text("Your personal budget managment tracker"),
              SizedBox(
                height: height / 8,
              ),
              Image.asset("assets/images/sign_up.png"),
              SizedBox(
                height: height / 8,
              ),
              SignInButtonBuilder(
                padding: EdgeInsets.only(left: width / 7),
                width: double.infinity,
                height: height / 18,
                text: 'SIGN UP WITH EMAIL',
                icon: Icons.email,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const EmailSignUp()),
                  );
                },
                backgroundColor: Theme.of(context).primaryColor,
              ),
              Center(
                child: TextButton(
                    onPressed: () {
                      widget.toggleView();
                    },
                    child: Text("Already A Member? Sign In")),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
