// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// import 'package:sms_spam_detector_app/screens/login_screen.dart';
// import 'package:sms_spam_detector_app/themes/theme_privider.dart';

// void main() {
//   runApp(
//     ChangeNotifierProvider(
//       create: (context) => ThemeProvider(),
//       child: SMSDetectorApp(),
//     ),
//   );
// }

// class SMSDetectorApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'SMS Spam Detector',
//       themeMode: ThemeMode.light,
//       theme: ThemeData(
//         fontFamily: 'Poppins',
//         brightness: Brightness.light,
//         scaffoldBackgroundColor: Colors.white,
//         primaryColor: Colors.blueAccent,
//         textTheme: TextTheme(
//           bodyMedium: TextStyle(fontSize: 16, color: Colors.black54),
//           titleLarge: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black),
//         ),
//       ),
//       home: LoginScreen(),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sms_spam_detector_app/screens/login_screen.dart';
import 'package:sms_spam_detector_app/themes/theme_privider.dart';

import 'screens/home_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: SMSApp(),
    ),
  );
}

class SMSApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SMS Spam Detector',
      theme: ThemeProvider.lightTheme,
      darkTheme: ThemeProvider.darkTheme,
      themeMode: themeProvider.isDarkMode ? ThemeMode.dark : ThemeMode.light,
      home: LoginScreen(),
    );
  }
}
