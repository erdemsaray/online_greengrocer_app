import 'package:cloud_firestore/cloud_firestore.dart';

import '../service/fruit_service.dart';
import 'base_model.dart';

class HomePageModel extends BaseModel {
  HomePageModel() {
    getFruits();
  }

  Stream<QuerySnapshot> getFruits() {
    FruitService fruitService = FruitService();
    return fruitService.getFruits();
  }
}
