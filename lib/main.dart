import 'package:counter_app_cubit/cubit/cubit_counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CubitCounterCubit>(
      create: (context) => CubitCounterCubit(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePageWithCubit(),
      ),
    );
  }
}

class MyHomePageWithCubit extends StatelessWidget {
  const MyHomePageWithCubit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("print triggered");
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter App With Cubit'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            /*  Text(
              context.watch<CubitCounterCubit>().state.counter.toString(),
              style: Theme.of(context).textTheme.headline4,
            ), 
            */
            BlocBuilder<CubitCounterCubit, CubitCounterState>(
              // bu sayede komple widgeti build etmek yerine değişiklik yapmak istediğimiz yeri build ediyoruz. build üstüne print yazdık. sadece butona ilk bastığımızda tetikleniyor.
              builder: (context, CubitCounterState state) {
                return Text(
                  state.counter.toString(),
                  style: Theme.of(context).textTheme.headline4,
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              context.read<CubitCounterCubit>().increment();
            },
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () {
              context.read<CubitCounterCubit>().decrement();
            },
            tooltip: 'Decrement',
            child: const Icon(Icons.minimize_rounded),
          ),
        ],
      ),
    );
  }
}
