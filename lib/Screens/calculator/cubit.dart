
import 'package:calculator/Screens/calculator/stutes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CalculatorCubit extends Cubit<CalculatorStates>
{
  final num1= TextEditingController();
  final num2= TextEditingController();
  final op= TextEditingController();
  double? result;


  CalculatorCubit():super(CalculatorInitial());
  static CalculatorCubit getObject(context)=>BlocProvider.of(context)  ;


  void calculate(){

    double n1= double.parse(num1.text);
    double n2= double.parse(num2.text);
    String o= op.text;

    switch(o){

      case "+":
        result = n1+n2;
      break;

      case "-":
        result=n1-n2;
        break;
      case "*":
        result=n1*n2;
        break;
      case "/":
        result=n1/n2;
        break;
    }

    emit(CalculatorResult());
  }







}