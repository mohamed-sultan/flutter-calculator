import 'package:flutter/material.dart';
import 'package:flutter_app/calcultaorLogic.dart';

void main()=>runApp(CalculatorApp());
    class CalculatorApp  extends StatelessWidget {
      @override
      Widget build(BuildContext context) {
        return MaterialApp(
          home:Calcultator()
        );
      }
    }
Logic calc = Logic();

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
                   calc.finalResult,
                      textAlign: TextAlign.left,
                      style: TextStyle(color: Colors.black,fontSize: 20),
                    ),

                  )
                ],
              ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    calculatorButton('AC', Colors.redAccent, Colors.black, (){
                      setState(() {
                        calc.reset();
                      });
                    }),
                    calculatorButton('+/-', Colors.grey, Colors.black, (){
                      setState(() {
                        calc.negative();
                      });
                    }),
                    calculatorButton('%', Colors.grey, Colors.black, (){
                      setState(() {
                        calc.percentage();
                      });
                    }),
                    calculatorButton('/', Colors.green, Colors.black, (){
                      setState(() {
                        calc.div();
                      });
                    })
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    calculatorButton('7', Colors.grey, Colors.black, (){
                      setState(() {
                        calc.setNumber('7');
                      });
                    }),
                    calculatorButton('8', Colors.grey, Colors.black, (){
                      setState(() {
                        calc.setNumber('8');
                      });
                    }),
                    calculatorButton('9', Colors.grey, Colors.black, (){
                      setState(() {
                        calc.setNumber('9');
                      });
                    }),
                    calculatorButton('*', Colors.green, Colors.black, (){
                      setState(() {
                        calc.multi();
                      });
                    })
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    calculatorButton('6', Colors.grey, Colors.black, (){
                      setState(() {
                        calc.setNumber('6');
                      });
                    }),
                    calculatorButton('5', Colors.grey, Colors.black, (){
                      setState(() {
                        calc.setNumber('5');
                      });
                    }),
                    calculatorButton('4', Colors.grey, Colors.black, (){
                      setState(() {
                        calc.setNumber('4');
                      });
                    }),
                    calculatorButton('-', Colors.grey, Colors.black, (){
                      setState(() {
                        calc.sub();
                      });
                    })
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    calculatorButton('3', Colors.grey, Colors.black, (){
                      setState(() {
                        calc.setNumber('3');
                      });
                    }),
                    calculatorButton('2', Colors.grey, Colors.black, (){
                      setState(() {
                        calc.setNumber('2');
                      });
                    }),
                    calculatorButton('1', Colors.grey, Colors.black, (){
                      setState(() {
                        calc.setNumber('1');
                      });
                    }),
                    calculatorButton('+', Colors.grey, Colors.black, (){
                      setState(() {
                        calc.add();
                      });
                    })
                  ],

                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    RaisedButton(
                    onPressed: (){
                      calc.setNumber('0');
                      },
                      padding: EdgeInsets.fromLTRB(35, 20, 128, 20),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Text(
                        '0',
                        style: TextStyle(fontSize: 35,color: Colors.white),

                      ),
                      color: Colors.blueGrey,
                ),
                    calculatorButton('.', Colors.grey, Colors.black, (){
                      setState(() {
                        calc.decimal();
                      });
                    }),
                    calculatorButton('=', Colors.grey, Colors.black, (){
                      setState(() {
                        calc.execute();
                      });
                    })
                  ],
                ),
                SizedBox(height: 10)
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
    
