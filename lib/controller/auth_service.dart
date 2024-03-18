import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:geografia/model/user.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Rxn<ModelUser> modelUser = Rxn<ModelUser>();

  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

  @override
  void onInit() {
    super.onInit();
    _firebaseAuth.authStateChanges().listen((User? user) {
      if (user == null) {
        modelUser.value = null;
        Get.toNamed("/login");
        print("caba n encontrado");
      } else {
        _firebaseFirestore.collection('users').doc(user.uid).get().then((DocumentSnapshot documentSnapshot) {
          if (documentSnapshot.exists) {
            print(documentSnapshot.data() as Map<String, dynamic>);
            modelUser.value = ModelUser.fromMap(documentSnapshot.data() as Map<String, dynamic>);
          } else {
            print("caba n encontrado");
          }
        });
      }
    });
  }

  //entrar
  Future<UserCredential> signInWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential userCredential = await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      return userCredential;
    } on FirebaseAuthException catch (e) {
      throw Exception(e.code);
    }
  }

  //se cadastrar
  Future<UserCredential> signUpWithEmailAndPassword(
    String email,
    String password,
    String name,
  ) async {
    try {
      UserCredential userCredential = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      await _firebaseFirestore.collection('users').doc(userCredential.user!.uid).set(
            ModelUser(
              id: userCredential.user!.uid,
              name: name,
            ).toMap(),
          );

      return userCredential;
    } on FirebaseAuthException catch (e) {
      throw Exception(e.code);
    }
  }

  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }
}
