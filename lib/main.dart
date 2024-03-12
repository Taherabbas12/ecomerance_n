import 'package:ecomerance/views/home.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

import 'views/sign_in.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(useMaterial3: true),
        builder: (BuildContext context, Widget? child) {
          // تحديد اتجاه النص للتطبيق بأكمله
          return Directionality(
            textDirection: TextDirection
                .rtl, // أو يمكنك استخدام TextDirection.ltr حسب الحاجة
            child: child!,
          );
        },
        home: GetStorage().read('auth') == null ? SignIn() : const Home()
        // Home
        // GetStorage().write('auth'
        // const Home(),
        );
  }
}
