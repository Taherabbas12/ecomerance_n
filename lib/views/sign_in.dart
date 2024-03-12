// ignore_for_file: use_build_context_synchronously

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

import '../database/db.dart';
import 'home.dart';
import 'sign_up.dart';

class SignIn extends StatelessWidget {
  SignIn({super.key});
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

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
                            AssetImage('assets/undraw_welcome_cats_thqn.png'))),
              ),
              const SizedBox(height: 40),
              inputText(email, 'الايميل'),
              inputText(password, 'رمز الدخول', isPassowrd: true),

              CupertinoButton(
                  child: const Text('لا املك حساب!'),
                  onPressed: () {
                    //
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignUp()));
                  }),
              const SizedBox(height: 30),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      fixedSize: const Size(250, 45), elevation: 3),
                  onPressed: () async {
                    if (email.text.trim().isNotEmpty &&
                        password.text.trim().isNotEmpty) {
                      List<Map<String, dynamic>> user = await DatabaseHelper()
                          .signInUser(email.text.trim(), password.text.trim());

                      // print();
                      if (user.isNotEmpty) {
                        // {id: 3, name: noor, email: noor, password: noornoor}
                        GetStorage().write('auth', user[0]);
                        print(user[0]);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Home()));
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('تحقق من البيانات')));
                      }
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content:
                              Text('يرجى ملأ كل الحقول والتحقق من الرمز')));
                    }
                    //
                  },
                  child: const Text(
                    'تسجيل الدخول',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

Widget inputText(controller, hintText, {bool isPassowrd = false}) {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
    margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
    decoration: BoxDecoration(
        color: const Color.fromARGB(255, 67, 67, 67),
        borderRadius: BorderRadius.circular(5)),
    child: TextFormField(
      controller: controller,
      obscureText: isPassowrd,
      decoration: InputDecoration(hintText: hintText, border: InputBorder.none),
    ),
  );
}
