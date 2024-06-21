import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/const.dart';
import 'package:flutter_application_1/util/input_field.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Login Up',
              style: TextStyle(
                fontSize: 42,
                fontWeight: FontWeight.w700,
                color: textColor
              ),  
            ),
            const SizedBox(height: 25,),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: TextInputField(
                controler: _emailController, 
                labelText: 'Email', 
                icon: Icons.email),
            ),
            const SizedBox(height: 25,),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: TextInputField(
                controler: _passwordController, 
                labelText: 'Password', 
                icon: Icons.lock,
                isObscure: true,
                ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              width: MediaQuery.of(context).size.width - 40,
              height: 50,
              decoration: BoxDecoration(
                color: buttonColor,
                borderRadius: const BorderRadius.all(
                  Radius.circular(8)
                )
              ),
              child: InkWell(
                onTap: () {
                  print("Text");
                },
                child: const Center(
                  child: Text('Login', style: TextStyle(
                    fontSize: 20, 
                    color: Colors.white, 
                    fontWeight: FontWeight.w700,
                    ),
                    ),
                ),
              ),
            ),
            const SizedBox(height: 15, ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Don\'t have an account? ', 
                style: TextStyle(
                  fontSize: 20,
                  ),
                ),
                InkWell(
                  onTap: (){
                    print('Nav');
                  },
                  child: Text('Register',
                  style: TextStyle(
                    fontSize: 20,
                    color: buttonColor
                  ),
                  ),
                )
              ],
            )
          ],
        ),
      )
    );
  }
}