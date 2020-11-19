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

  void add (){
    pareNumber();
    performOperation('+');
  }

  void sub (){
    pareNumber();
    performOperation('-');
  }

  void multi (){
    pareNumber();
    performOperation('*');
  }

  void div (){
    pareNumber();
    performOperation('/');
  }
void percentage(){
    firstResult = firstNumber/100;
    finalResult = firstResult;
}

void negative(){
    firstResult.toString().startsWith('-')
        ? firstResult = firstResult.toString().substring(1)
        : firstResult = '-' + firstResult.toString() ;
    firstResult = firstResult;
}
void decimal (){
    if(!firstResult.toString().contains('.')){
      firstResult = firstResult.toString() + '.0';
    }
    finalResult = firstResult;
}
  void setNumber(number){
    firstResult+=number ;
    finalResult = firstResult;
  }
  void execute(){
    if(operation =='+'){
      addCalculation();
    }
    if(operation =='-'){
      subCalculation();
    }
    if(operation =='/'){
      divCalculation();
    }
    if(operation =='*'){
      multCalculation();
    }
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