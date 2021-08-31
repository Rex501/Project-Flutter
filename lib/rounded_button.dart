import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget
{
  String textoButon;

  RoundedButton(this.textoButon);

  @override
  Widget build(BuildContext context)
  {
    //boton
    final roundedButton = InkWell
    (
      child: Container
      (
        height: 50,
        width: 160,
        margin: EdgeInsets.only
        (
          top:20
        ),
        decoration: BoxDecoration
        (
          borderRadius:  BorderRadius.circular(30),
          gradient: LinearGradient
          (
            colors:
            [
              Color (0xFF4268D3),
              Color (0xFF574ACF)
            ],
            begin: FractionalOffset(0.0, 0.5),
            end: FractionalOffset(1.0, 0.5),
            stops:  [0.0,0.5],
            tileMode: TileMode.clamp
          )
        ),
        child:Center
        (
          child: Text
          (
            textoButon,
            style: TextStyle
            (
              fontFamily: "Lato",
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colors.white
            ),
          ),
        ),
      ),
      onTap: ()
      {
        Scaffold.of(context).showSnackBar
        (
          SnackBar
          (
            content: Text
            (
              "Navigate..."
            ),
          )
        );
      },
    );
    return roundedButton;
  }
}