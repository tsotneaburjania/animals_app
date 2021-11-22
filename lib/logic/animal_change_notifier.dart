import 'package:flutter/foundation.dart';
import 'package:flutter_test_ground/data/constants.dart';

import '../data/animal_model.dart';

class AnimalChangeNotifier extends ChangeNotifier{
  late AnimalModel _animalModel = AnimalModel(Constants.pigImgLink, Constants.pigName, Constants.pigDesc);

  AnimalModel get animalModel => _animalModel;

  void setAnimal(AnimalModel animal){
    _animalModel = animal;

    notifyListeners();
  }
}