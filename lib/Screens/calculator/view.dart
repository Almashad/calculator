import 'package:calculator/Screens/calculator/cubit.dart';
import 'package:calculator/Screens/calculator/stutes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CalculatorScreen extends StatelessWidget {
  const CalculatorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CalculatorCubit>(
        create: (context) => CalculatorCubit(),
        child: Builder(builder: (context) {
          final cubit = CalculatorCubit.getObject(context);
          return Scaffold(
            appBar: AppBar(
              title: Text('Calculator'),
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  TextFormField(controller: cubit.num1),
                  SizedBox(
                    height: 12,
                  ),
                  TextFormField(controller: cubit.op),
                  SizedBox(
                    height: 12,
                  ),
                  TextFormField(controller: cubit.num2),
                  SizedBox(
                    height: 12,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        cubit.calculate();
                      },
                      child: Text('calculet')),
                  SizedBox(
                    height: 12,
                  ),
                  BlocBuilder<CalculatorCubit, CalculatorStates>(
                    builder: (context, state) =>
                        Text('The reuslt is ${cubit.result}'),
                  )
                ],
              ),
            ),
          );
        }));
  }
}
