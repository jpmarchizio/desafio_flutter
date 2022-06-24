import 'package:desafio_flutter/service/firebase_client.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mobx/mobx.dart';
part 'controller.g.dart';

// ignore: library_private_types_in_public_api
class Controller = _ControllerBase with _$Controller;

abstract class _ControllerBase with Store {
  //SPLASH SCREEN

  //#############################################

  //LOGIN AND FORGET PASSWORD SCREEN
  FirebaseClient firebaseClient = FirebaseClient();
  final instance = FirebaseAuth.instance;

  @observable
  String user = '';

  @observable
  String password = '';

  @observable
  String pwRecover = '';

  @action
  Future<UserCredential> logIn({
    required String email,
    required String password,
  }) async {
    try {
      return await firebaseClient.logInFirebase(
        email: email,
        password: password,
      );
    } catch (e) {
      throw e;
    }
  }
  //#############################################

  //NEW EVENT SCREEN
  @observable
  String eventName = '';

  @observable
  String eventDesc = '';

  @observable
  String date = '';

  @observable
  String timeStart = '';

  @observable
  String timeEnd = '';

  @observable
  String cep = '';

  @observable
  String street = '';

  @observable
  String number = '';

  @observable
  String neighbourhood = '';

  @observable
  String city = '';
  //#############################################

  //EVENT LIST SCREEN

  //#############################################

  //SOFT EVENT LIST SCREEN

  //#############################################

  //SOFT EVENT INFO SCREEN

  //#############################################

  //SOFT EVENT PLACE SCREEN

  //#############################################

  //MY EVENT LIST SCREEN

  //#############################################

  //MY EVENT INFO SCREEN

  //#############################################

  //PASSWORD FIELD WIDGET
  @observable
  bool isHidden = true;

  @action
  void togglePasswordVisibility() {
    isHidden = !isHidden;
  }
  //#############################################
}
