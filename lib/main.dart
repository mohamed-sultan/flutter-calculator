import 'package:flutter/material.dart';

void main()=>runApp(CalculatorApp());

    class CalculatorApp  extends StatelessWidget {
      @override
      Widget build(BuildContext context) {
        return MaterialApp(
          home:Calcultator()
        );
      }
    }
    
    class Calcultator extends StatefulWidget {
      @override
      _CalcultatorState createState() => _CalcultatorState();

    }
    
    class _CalcultatorState extends State<Calcultator> {
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
              Row(
               mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      '0',
                      textAlign: TextAlign.left,
                      style: TextStyle(color: Colors.black,fontSize: 20),
                    ),

                  )
                ],
              )
              ],
            ),
          )
        );
      }
    }

    Widget calculatorButton(String btnText, Color btnColor, Color btnTextColor,onpress){
      return Container(
        child: RaisedButton(
          onPressed: onpress,
          child: Text(
            btnText,
            style: TextStyle(fontSize: 30,color: btnTextColor),
          ),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          color: btnColor,
          padding: EdgeInsets.all(20),
        ),
      );
    }
    
