// ignore_for_file: prefer_const_constructors, use_build_context_synchronously

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

import '../database/db.dart';
import 'home.dart';
import 'sign_in.dart';

class SignUp extends StatelessWidget {
  SignUp({super.key});
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController rePassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //
              Container(
                width: MediaQuery.sizeOf(context).width * 0.9,
                height: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image:
                            AssetImage('assets/undraw_Sign_up_n6im (1).png'))),
              ),
              const SizedBox(height: 40),
              inputText(name, 'الاسم'),
              inputText(email, 'الايميل'),
              inputText(password, 'رمز الدخول', isPassowrd: true),
              inputText(rePassword, ' اعد رمز الدخول', isPassowrd: true),

              CupertinoButton(
                  child: const Text('املك حساب بلفعل!'),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignIn()));
                    //
                  }),
              const SizedBox(height: 30),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      fixedSize: const Size(250, 45), elevation: 3),
                  onPressed: () async {
                    //
                    if (email.text.trim().isNotEmpty &&
                        name.text.trim().isNotEmpty &&
                        password.text.trim().isNotEmpty &&
                        password.text == rePassword.text) {
                      int index = await DatabaseHelper().insertUser({
                        'name': name.text.trim(),
                        'email': email.text.trim(),
                        'password': password.text.trim(),
                      });

                      // {id: 3, name: noor, email: noor, password: noornoor}
                      GetStorage().write('auth', {
                        'id': 0,
                        'name': name.text.trim(),
                        'email': email.text.trim(),
                        'password': password.text.trim()
                      });
                      print('index value db --- = $index');
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Home()));
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content:
                              Text('يرجى ملأ كل الحقول والتحقق من الرمز')));
                    }
                  },
                  child: const Text(
                    'انشاء حساب',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}


// noor@gmail.com
// 1234