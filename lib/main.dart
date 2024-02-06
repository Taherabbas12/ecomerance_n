import 'package:ecomerance/views/home.dart';
import 'package:flutter/material.dart';

void main() {
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
      home: const Home(),
    );
  }
}
