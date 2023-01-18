import 'package:cloud_firestore/cloud_firestore.dart';

class FruitService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Stream<QuerySnapshot> getFruits() {
    var ref = _db.collection("fruits").snapshots();

    return ref;
  }

  Stream<QuerySnapshot> getRecommendedFruits() {
    var ref = _db.collection("fruits").where("type", arrayContains: "Recommended").snapshots();

    return ref;
  }
}
