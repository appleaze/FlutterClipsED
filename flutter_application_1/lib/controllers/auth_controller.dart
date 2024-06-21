import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_application_1/const.dart';
import 'package:flutter_application_1/homepage.dart';
import 'package:flutter_application_1/models/users.dart' as model;
import 'package:flutter_application_1/pages/auth/login_page.dart';
import 'package:get/get.dart';

class AuthController extends GetxController{
  static AuthController instance = Get.find();
  late Rx<User?> _user;

  @override
  void onReady(){
    super.onReady();
    _user = Rx<User?>(firebaseAuth.currentUser);
    _user.bindStream(firebaseAuth.authStateChanges());
    ever(_user, _setInitialScreen);
  }

  _setInitialScreen(User? user){
    if(user == null){
      Get.offAll(()=> LoginPage());
    }else{
      Get.offAll(() => const HomePage());
    }
  }
  //register
  void registerUser(String username, String email, String password)async{
    try{
      if(username.isNotEmpty && 
      email.isNotEmpty && 
      password.isNotEmpty){
        UserCredential cred = await firebaseAuth.createUserWithEmailAndPassword(
        email: email, 
        password: password,
        );
        model.User user = model.User(name: username, email: email, uid: cred.user!.uid);
        await firestore.collection('users').doc(cred.user!.uid).set(user.toJson());
      }else{
        Get.snackbar('Error Creating Account', 'Please enter all the fields',);
      }
    }catch(e){
      Get.snackbar('Error Creating Account', e.toString(),);
    }
  }
  void loginUser(String email, String password) async{
    try{
      if(email.isNotEmpty && password.isNotEmpty){
        await firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
        
      }else{
        Get.snackbar('Error Logging in', 'Please enter all the fields',);
      }
    }catch(e){
      Get.snackbar('Error Creating Account', e.toString(),);
    }
  }

  void signOut() async{
    await firebaseAuth.signOut();
  }
}