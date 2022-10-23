import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class BarberosPRFirebaseUser {
  BarberosPRFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

BarberosPRFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<BarberosPRFirebaseUser> barberosPRFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<BarberosPRFirebaseUser>(
      (user) {
        currentUser = BarberosPRFirebaseUser(user);
        return currentUser!;
      },
    );
