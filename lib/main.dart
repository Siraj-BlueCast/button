import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_buttons/text_blocs.dart';
import 'package:flutter_buttons/text_event.dart';
import 'package:flutter_buttons/text_state.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppBloc(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocBuilder<AppBloc, InitialState>(
        builder: (context, state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(state.text),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: () {
                        BlocProvider.of<AppBloc>(context)
                            .add(const ChangeTextEvent1());
                      },
                      child: const Text('Button 1')),
                  TextButton(
                      onPressed: () {
                        BlocProvider.of<AppBloc>(context)
                            .add(const ChangeTextEvent2());
                      },
                      child: const Text('Button 2')),
                  TextButton(
                      onPressed: () {
                        BlocProvider.of<AppBloc>(context)
                            .add(const ChangeTextEvent3());
                      },
                      child: const Text('Button 3'))
                ],
              )
            ],
          );
        },
      ),
    );
  }
}
