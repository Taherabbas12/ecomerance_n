import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

import 'sign_in.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    Map p = GetStorage().read('auth');
    print('___________Profile : $p');
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          UserAccountsDrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.transparent,
            ),
            arrowColor: Colors.transparent,
            accountName: Text('Name : ${p['name']}'),
            accountEmail: Text('Email : ${p['email']}'),
            currentAccountPicture: const CircleAvatar(
                radius: 30, child: Icon(Icons.person, size: 30)),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                backgroundColor: const Color.fromARGB(255, 146, 32, 24)),
            onPressed: () {
              //
              GetStorage().remove('auth');

              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignIn(),
                  ));
            },
            child: const Text('تسجيل الخروج',
                style: TextStyle(fontSize: 18, color: Colors.white)),
          )
        ],
      ),
    );
  }
}
