import 'package:e_commerce_flutter/Components/colors.dart';
import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  final String textButton, textTitle, textToGo;
  final Function onClickButton, onClickText;

  const Footer(
      {Key key,
      this.textTitle,
      this.textToGo,
      this.onClickButton,
      this.onClickText,
      this.textButton})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 55,
          width: MediaQuery.of(context).size.width * .6,
          child: RaisedButton(
            onPressed: onClickButton,
            child: Text(
              textButton,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            color: ButtonColor,
            textColor: PrimaryLightColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
            elevation: 10,
            padding: EdgeInsets.only(left: 36, top: 12, right: 36, bottom: 12),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(textTitle,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w400)),
            InkWell(
              child: Text(textToGo,
                  style: TextStyle(
                      color: PrimaryColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,)),
              onTap: onClickText,
            )
          ],
        ),
      ],
    );
  }
}
