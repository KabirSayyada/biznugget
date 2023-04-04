class UserInfo {
  final String uid;
  final String email;

  UserInfo({required this.uid, required this.email});
}

class Consumer extends UserInfo {
  Consumer({required uid, required email}) : super(uid: uid, email: email);
}

class Business extends UserInfo {
  Business({required uid, required email}) : super(uid: uid, email: email);
}

class JobCreator extends UserInfo {
  JobCreator({required uid, required email}) : super(uid: uid, email: email);
}

class Freelance extends UserInfo {
  Freelance({required uid, required email}) : super(uid: uid, email: email);
}

class Vendor extends UserInfo {
  Vendor({required uid, required email}) : super(uid: uid, email: email);
}

class ServiceProvider extends UserInfo {
  ServiceProvider({required uid, required email})
      : super(uid: uid, email: email);
}

enum UserType {
  consumer,
  business,
  vendor,
  freelance,
  jobCreator,
  serviceProvider,
}
