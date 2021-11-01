import 'package:flutter/material.dart';
import 'package:flutter_test_ground/screens/data/constants.dart';

class MainScreenPortrait extends StatefulWidget {
  const MainScreenPortrait({Key? key}) : super(key: key);

  @override
  State<MainScreenPortrait> createState() => _MainScreenPortraitState();
}

class _MainScreenPortraitState extends State<MainScreenPortrait> {
  String animal = 'pig';
  String animalDesc = Constants.pig;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          flex: 1,
          child: SingleChildScrollView(
            child: Column(
            children: [
              if (animal == 'pig')
                Image.network(Constants.pigImgLink, width: 300, height: 200),
              if (animal == 'kom')
                Image.network(Constants.kmdLizardImgLink, width: 300, height: 200),
              if (animal == 'pen')
                Image.network(Constants.penguinImgLink, width: 300, height: 200),
              if (animal == 'bis')
                Image.network(Constants.bisonPenguinLink, width: 300, height: 200),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(animalDesc),
                ),
              ),
            ],
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.4,
                      height: 60,
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            animal = 'pig';
                            animalDesc = Constants.pig;
                          });
                        },
                        child: const Text('pig'),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                          // fixedSize: MaterialStateProperty.all<Size>(Size.square())
                        ),

                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.4,
                      height: 60,
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            animal = 'kom';
                            animalDesc = Constants.kmdLizard;
                          });
                        },
                        child: const Text('Komodo Lizard'),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                        ),
                      ),
                    ),

                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: 60,
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          animal = 'pen';
                          animalDesc = Constants.penguin;
                        });
                      },
                      child: const Text('Penguin'),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: 60,
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          animal = 'bis';
                          animalDesc = Constants.bison;
                        });
                      },
                      child: const Text('Bison'),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                      ),
                    ),
                  ),

                ],
              )
            ],
          ),
        ),

      ],
    );
  }
}
