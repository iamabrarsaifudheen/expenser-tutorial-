
import 'package:expenser_tutorial/widgets/button.dart';
import 'package:expenser_tutorial/widgets/text_box.dart';
import 'package:flutter/material.dart';

class EmailSignUp extends StatefulWidget {
  const EmailSignUp({Key? key}) : super(key: key);

  @override
  _EmailSignUpState createState() => _EmailSignUpState();
}

class _EmailSignUpState extends State<EmailSignUp> {
  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();

  bool _success = false;
  late String _userEmail;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          title: Text("SIGN IN"),
        ),
        body: SafeArea(
            child: Form(
                key: _formKey,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 36, vertical: 50),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        TextBox(
                          type: 'email',
                          hintText: "Enter your Email",
                          controller: _emailController,
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: height / 40),
                        TextBox(
                          type: 'password',
                          hintText: "Enter your Password",
                          controller: _passwordController,
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: height / 40),
                        TextBox(
                          type: 'username',
                          hintText: "Enter your username",
                          controller: _usernameController,
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: height / 20),
                        Button(
                          text: "SUBMIT",
                          onPressed: () async {
                            if (_formKey.currentState!.validate()) {
                         

                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(content: Text('Welcome')),
                              );
                             
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                ))));
  }
}
