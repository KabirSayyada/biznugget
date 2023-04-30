import 'package:cloud_firestore/cloud_firestore.dart';

final CollectionReference usersCollection =
    FirebaseFirestore.instance.collection('users');

class UserModel {
  final String uid;
  final String email;
  final UserType type;

  UserModel({required this.uid, required this.email, required this.type});
}

class Consumer extends UserModel {
  Consumer({required super.uid, required super.email, required super.type});
}

class Business extends UserModel {
  Business({required super.uid, required super.email, required super.type});
}

class Freelance extends UserModel {
  Freelance({required super.uid, required super.email, required super.type});
}

class JobCreator extends UserModel {
  JobCreator({required super.uid, required super.email, required super.type});
}

class ServiceProvider extends UserModel {
  ServiceProvider(
      {required super.uid, required super.email, required super.type});
}

class Vendor extends UserModel {
  Vendor({required super.uid, required super.email, required super.type});
}

enum UserType {
  business,
  consumer,
  freelance,
  jobCreator,
  serviceProvider,
  vendor,
}
