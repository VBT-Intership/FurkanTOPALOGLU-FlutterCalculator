import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget{
  final Color backGroundColor;
  final Color textColor;
  final String text;
  final VoidCallback onPressed;
  const CalculatorButton({Key key, this.backGroundColor=Colors.transparent, this.textColor=Colors.white, this.text, this.onPressed,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return buildRaisedButton(context);
  }
  
  ButtonTheme buildRaisedButton(BuildContext context){
    return ButtonTheme(
      minWidth: MediaQuery.of(context).size.width*0.22,
      height: MediaQuery.of(context).size.height*0.11,
      child: RaisedButton(
        elevation: 0,
        
        child: buildCenterText(context),
        onPressed: onPressed,
        color: backGroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
      ),
    );
  }
  Text buildCenterText(BuildContext context)=>Text(
  "$text",
  style: TextStyle(
    color: textColor,
    fontSize:  MediaQuery.of(context).size.height*0.035,
  ),
);
}