import 'package:flutter/material.dart';
import 'package:flutter_test_ground/logic/animal_change_notifier.dart';
import 'package:flutter_test_ground/screens/widgets/main_screen_landscape.dart';
import 'package:flutter_test_ground/screens/widgets/main_screen_portrait.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
      ChangeNotifierProvider(
        create: (context) => AnimalChangeNotifier(),
        child: const ImageChangerApp(),
      )
  );
}

class ImageChangerApp extends StatelessWidget {
  const ImageChangerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'ImageChangerApp',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String animal = 'bis';

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Animals'),
        centerTitle: true,
      ),
      body: (() {
        // ვინაიდან, გვაინტერესებს სქრინის ორიენტაცია და არა სიგანე/სიმაღლე,
        // LayoutBuilder-ის გამოყენების მიზეზს ვერ ვხედავ.
        if (MediaQuery.of(context).orientation == Orientation.portrait){
          return const MainScreenPortrait();
        }
        else if (MediaQuery.of(context).orientation == Orientation.landscape){
          return const MainScreenLandscape();
        }
      }()),
    );
  }
}





