import 'package:flutter/material.dart';

class Logic{
  double firstNumber = 0;
  double secondNumber = 0;
  dynamic firstResult = '';
  dynamic finalResult = '0';
  dynamic operation = '';

  void reset(){
     firstNumber = 0;
     secondNumber = 0;
     firstResult = '';
     finalResult = '0';
     operation = '';
  }

  void setNumber(number){
    firstResult+=number ;
    finalResult = firstResult;
  }
  void pareNumber (){
    if(firstNumber==0){
      firstNumber = double.parse(firstResult);
    }else{
      secondNumber = double.parse(firstResult);

    }
  }
  void addCalculation (){
    firstResult = (firstNumber + secondNumber).toString();
    firstNumber = double.parse(firstResult);
    finalResult = firstResult;
  }
  void subCalculation (){
    firstResult = (firstNumber - secondNumber).toString();
    firstNumber = double.parse(firstResult);
    finalResult = firstResult;
  }
  void divCalculation (){
    firstResult = (firstNumber / secondNumber).toString();
    firstNumber = double.parse(firstResult);
    finalResult = firstResult;
  }
  void multCalculation (){
    firstResult = (firstNumber * secondNumber).toString();
    firstNumber = double.parse(firstResult);
    finalResult = firstResult;
  }
  void performOperation(symbol){
    operation = symbol;
    firstResult = '';

  }
}