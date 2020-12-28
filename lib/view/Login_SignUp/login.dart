import 'package:e_commerce_flutter/Components/colors.dart';
import 'package:e_commerce_flutter/view/Login_SignUp/fotter.dart';
import 'package:e_commerce_flutter/view/Login_SignUp/header.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final FocusNode _emailFocus = FocusNode();
  final FocusNode _passwordFocus = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Header(
              srcImage: 'assets/images/Mobile login.gif',
              title: 'Welcome Back',
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(36, 20, 36, 0),
              child: Column(
                children: <Widget>[
                  Material(
                    borderRadius: BorderRadius.circular(25),
                    elevation: 5,
                    shadowColor: Colors.black,
                    child: TextFormField(
                        decoration: editText(
                            labelText: 'Email',
                            textFieldIcon: Icon(Icons.email)),
                        cursorColor: ButtonColor,
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        focusNode: _emailFocus,
                        onFieldSubmitted: (trem) {
                          _fieldFocusChange(
                              context, _emailFocus, _passwordFocus);
                        }),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Material(
                    borderRadius: BorderRadius.circular(25),
                    elevation: 5,
                    shadowColor: Colors.black,
                    child: TextFormField(
                        decoration: editText(
                          labelText: 'Password',
                          textFieldIcon: Icon(Icons.lock),
                        ),
                        cursorColor: ButtonColor,
                        obscureText: true,
                        keyboardType: TextInputType.text,
                        textInputAction: TextInputAction.done,
                        focusNode: _passwordFocus,
                        onFieldSubmitted: (value) {
                          _passwordFocus.unfocus();
                        }),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Footer(
                    textButton: 'LOGIN',
                    textTitle: 'You don\'t have an Account? ',
                    textToGo: 'Register',
                    onClickText: () {
                      Navigator.pop(context);
                      Navigator.pushNamed(context, '/signUp');
                    },
                    onClickButton: () {
                      Navigator.pop(context);
                      Navigator.pushNamed(context, '/home');
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  InputDecoration editText({String labelText, Icon textFieldIcon}) {
    return InputDecoration(
      labelText: labelText,
      prefixIcon: textFieldIcon,
      filled: true,
      fillColor: PrimaryColor.withOpacity(.1),
      focusedBorder: OutlineInputBorder(
        gapPadding: 10,
        borderRadius: BorderRadius.circular(25),
        borderSide: BorderSide(color: PrimaryColor, width: 1.5),
      ),
      enabledBorder: OutlineInputBorder(
        gapPadding: 10,
        borderRadius: BorderRadius.circular(25),
        borderSide: BorderSide(
          color: Colors.white.withOpacity(.1),
          width: 1.5,
        ),
      ),
      errorBorder: OutlineInputBorder(
        gapPadding: 10,
        borderRadius: BorderRadius.circular(25),
        borderSide: BorderSide(color: Colors.red[900], width: 1.5),
      ),
      labelStyle: TextStyle(color: Colors.grey.shade700),
    );
  }

  _fieldFocusChange(
      BuildContext context, FocusNode currentFocus, FocusNode nextFocus) {
    currentFocus.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }
}
