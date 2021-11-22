import 'package:flutter/material.dart';
import 'package:flutter_test_ground/logic/animal_change_notifier.dart';
import 'package:flutter_test_ground/data/animal_model.dart';
import 'package:flutter_test_ground/data/constants.dart';
import 'package:provider/provider.dart';

class MainScreenLandscape extends StatelessWidget {
  const MainScreenLandscape({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          flex: 1,
          child: ListView(
            children: [Column(
              children: [
                Consumer<AnimalChangeNotifier>(
                    builder: (context, animal, child){
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.network(animal.animalModel.imageUrl, width: 300, height: 200),
                      );
                    }
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Consumer<AnimalChangeNotifier>(
                      builder: (context, animal, child){
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(animal.animalModel.description),
                          ),
                        );
                      }
                  ),
                ),
              ],
            ),
            ],
          ),
        ),

        Flexible(
          flex: 1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: (MediaQuery.of(context).size.width / 2) * 0.4,
                      height: 60,
                      child: TextButton(
                        onPressed: () => context.read<AnimalChangeNotifier>().setAnimal(AnimalModel(Constants.pigImgLink, Constants.pigName, Constants.pigDesc)),
                        child: const Text('pig'),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                          // fixedSize: MaterialStateProperty.all<Size>(Size.square())
                        ),

                      ),
                    ),
                    SizedBox(
                      width: (MediaQuery.of(context).size.width / 2) * 0.4,
                      height: 60,
                      child: TextButton(
                        // onPressed: () {
                        //   setState(() {
                        //     animal = 'kom';
                        //     animalDesc = Constants.kmdLizard;
                        //   });
                        // },
                        onPressed: () => context.read<AnimalChangeNotifier>().setAnimal(AnimalModel(Constants.kmdLizardImgLink, Constants.kmdLizardName, Constants.kmdLizardDesc)),
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
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: (MediaQuery.of(context).size.width / 2) * 0.4,
                    height: 60,
                    child: TextButton(
                      // onPressed: () {
                      //   setState(() {
                      //     animal = 'pen';
                      //     animalDesc = Constants.penguin;
                      //   });
                      // },
                      onPressed: () => context.read<AnimalChangeNotifier>().setAnimal(AnimalModel(Constants.penguinImgLink, Constants.penguinName, Constants.penguinDesc)),
                      child: const Text('Penguin'),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                      ),

                    ),
                  ),
                  SizedBox(
                    width: (MediaQuery.of(context).size.width / 2) * 0.4,
                    height: 60,
                    child: TextButton(
                      // onPressed: () {
                      //   setState(() {
                      //     animal = 'bis';
                      //     animalDesc = Constants.bison;
                      //   });
                      // },
                      onPressed: () => context.read<AnimalChangeNotifier>().setAnimal(AnimalModel(Constants.bisonLink, Constants.bisonName, Constants.bisonDesc)),
                      child: const Text('Bison'),
                      style: ButtonStyle(
                        // minimumSize: MaterialStateProperty.all<Size>(Size(150, 36)),
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

