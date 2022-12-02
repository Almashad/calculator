import 'dart:developer';

import 'package:calculator/Screens/counter/stutes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CounterCubit>(
        create: (context) => CounterCubit(),
        child: Builder(builder: (context)
    {
      final cubit = CounterCubit.getObject(context);
      return Scaffold(
        appBar: AppBar(title: Text('counter'),),
        body: Column(
          children: [
            Row(
              children: [
                FloatingActionButton(onPressed: (){
                  cubit.plus();
                },child: Icon(Icons.add),),
                BlocBuilder<CounterCubit, CounterState>(
                  builder: (context, state) =>
                      Text('The reuslt is ${cubit.counter}'),
                ),
                FloatingActionButton(onPressed: (){
                  cubit.minus();
                },child: Icon(Icons.remove),),
              ],
            )
          ],
        ),
      );}
    )
    );
  }
  }
