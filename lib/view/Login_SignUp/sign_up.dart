import 'package:e_commerce_flutter/Components/colors.dart';
import 'package:e_commerce_flutter/view/Login_SignUp/fotter.dart';
import 'package:e_commerce_flutter/view/Login_SignUp/header.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final FocusNode _emailFocus = FocusNode();
  final FocusNode _passwordFocus = FocusNode();
  final FocusNode _passwordConfiremFocus = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Header(
                srcImage: 'assets/images/Register.gif',
                title: 'REGISTER',
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
                          onFieldSubmitted: (trem) {
                            _fieldFocusChange(context, _passwordFocus,
                                _passwordConfiremFocus);
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
                            labelText: 'Cofirem Password',
                            textFieldIcon: Icon(Icons.check_box),
                          ),
                          cursorColor: ButtonColor,
                          obscureText: true,
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.done,
                          focusNode: _passwordConfiremFocus,
                          onFieldSubmitted: (value) {
                            _passwordFocus.unfocus();
                          }),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Footer(
                textButton: 'REGISTER',
                textTitle: 'You have an Account?',
                textToGo: 'Login',
                onClickText: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/login');
                },
                onClickButton: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/home');
                },
              ),
            ],
          ),
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
