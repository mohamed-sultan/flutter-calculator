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
        return Container();
      }
    }
    
