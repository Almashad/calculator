

import 'package:calculator/Screens/counter/stutes.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState>{
  CounterCubit():super(CounterInitial());

  static CounterCubit getObject(context)=>BlocProvider.of(context);
  int counter=0;
  void plus(){
    counter++;
    emit(CounterPlus());


  }
  void minus(){
    counter--;
        emit(CounterMinus());
  }
}