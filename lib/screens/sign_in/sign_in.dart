
import 'package:expenser_tutorial/screens/sign_in/email_sign_in.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key, required this.toggleView}) : super(key: key);
  final Function toggleView;

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
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
              const Text("Expenser",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24)),
              const Text("Your personal budget managment tracker"),
              SizedBox(
                height: height / 8,
              ),
              Image.asset("assets/images/sign_in.png"),
              SizedBox(
                height: height / 8,
              ),
              SignInButtonBuilder(
                padding: EdgeInsets.only(left: width / 7),
                width: double.infinity,
                height: height / 18,
                text: 'SIGN IN WITH EMAIL',
                icon: Icons.email,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const EmailSignIn()),
                  );
                },
                backgroundColor: Theme.of(context).primaryColor,
              ),
              Center(
                child: TextButton(
                    onPressed: () {
                      widget.toggleView();
                    },
                    child: Text("Not a member yet? Sign Up")),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
