import 'package:custom_text_form_field/bloc/global_bloc.dart';
import 'package:custom_text_form_field/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GlobalBloc(),
      child: const HomeView(),
      );
  }
}

// SizedBox(
//                 width: MediaQuery.of(context).size.width * 0.5,
//                 child: TextFormField(
//                   decoration:
//                       const InputDecoration(border: OutlineInputBorder()),
//                 )),
//             IconButton(
//               onPressed: () {},
//               icon: const Icon(Icons.add),
//               style: const ButtonStyle(
//                   backgroundColor:
//                       MaterialStatePropertyAll<Color>(Colors.yellow)),
//             )

// TextFormModel(name: "name", rollno: 0), TextFormModel(name: "name", rollno: 0)