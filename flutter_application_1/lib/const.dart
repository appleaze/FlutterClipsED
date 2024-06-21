import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/auth_controller.dart';

//COLORS
const primaryColor = Color.fromARGB(1, 5, 5, 5); 
const textColor = Color.fromARGB(255, 44, 44,44);
const buttonColor = Color.fromARGB(255, 39, 206, 67);
const secondaryColor = Color.fromARGB(255, 158, 255, 210);
const accentColor = Color.fromARGB(255, 181, 255, 61);


//Firebase
var firebaseAuth = FirebaseAuth.instance;
var firebaseStorage = FirebaseStorage.instance;
var firestore = FirebaseFirestore.instance;

//Controller
var authController = AuthController.instance;