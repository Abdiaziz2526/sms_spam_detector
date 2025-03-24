
// import 'package:flutter/material.dart';
// import 'package:iconly/iconly.dart';
// import 'package:provider/provider.dart';
// import 'package:sms_spam_detector_app/themes/theme_privider.dart';


// class SpamDetectorScreen extends StatefulWidget {
//   @override
//   _SpamDetectorScreenState createState() => _SpamDetectorScreenState();
// }

// class _SpamDetectorScreenState extends State<SpamDetectorScreen> {
//   final TextEditingController _smsController = TextEditingController();
//   String _result = '';

//   void checkSpam() {
//     setState(() {
//       _result = _smsController.text.toLowerCase().contains("win") ? "Spam" : "Ham";
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     final themeProvider = Provider.of<ThemeProvider>(context);
//     bool isDarkMode = themeProvider.isDarkMode;

//     return Scaffold(
//       backgroundColor: isDarkMode ? Color(0xFF121212) : Colors.white,
//       appBar: AppBar(
//         title: Text("Spam Detector"),
//         backgroundColor: isDarkMode ? Color(0xFF1E1E1E) : Colors.white,
//         elevation: 0,
//         centerTitle: true,
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(24),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               "Enter SMS Message",
//               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: isDarkMode ? Colors.white : Colors.black),
//             ),
//             SizedBox(height: 10),
//             TextField(
//               controller: _smsController,
//               style: TextStyle(color: isDarkMode ? Colors.white : Colors.black),
//               decoration: InputDecoration(
//                 filled: true,
//                 fillColor: isDarkMode ? Color(0xFF2A2A2A) : Colors.white,
//                 hintText: "Type your message here...",
//                 hintStyle: TextStyle(color: isDarkMode ? Colors.white54 : Colors.grey[600]),
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(12),
//                   borderSide: BorderSide.none,
//                 ),
//               ),
//             ),
//             SizedBox(height: 20),
//             GestureDetector(
//               onTap: checkSpam,
//               child: Container(
//                 height: 55,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10),
//                   color: Color(0xFF6B8AFB),
//                 ),
//                 child: Center(
//                   child: Text(
//                     "Check Spam",
//                     style: TextStyle(fontSize: 17, color: Colors.white),
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(height: 20),
//             if (_result.isNotEmpty)
//               Container(
//                 padding: EdgeInsets.all(12),
//                 decoration: BoxDecoration(
//                   color: _result == "Spam"
//                       ? Colors.redAccent.withOpacity(0.2)
//                       : Colors.greenAccent.withOpacity(0.2),
//                   borderRadius: BorderRadius.circular(12),
//                 ),
//                 child: Row(
//                   children: [
//                     Icon(
//                       _result == "Spam" ? IconlyLight.danger : IconlyLight.shield_done,
//                       color: _result == "Spam" ? Colors.redAccent : Colors.green,
//                     ),
//                     SizedBox(width: 10),
//                     Text(
//                       _result,
//                       style: TextStyle(
//                         fontSize: 18,
//                         fontWeight: FontWeight.bold,
//                         color: isDarkMode ? Colors.white : Colors.black,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:provider/provider.dart';
import 'package:sms_spam_detector_app/themes/theme_privider.dart';


class SpamDetectorScreen extends StatefulWidget {
  @override
  _SpamDetectorScreenState createState() => _SpamDetectorScreenState();
}

class _SpamDetectorScreenState extends State<SpamDetectorScreen> {
  final TextEditingController _smsController = TextEditingController();
  String _result = '';

  final List<String> spamKeywords = [
    "win", "prize", "lottery", "free", "urgent", "congratulations", 
    "click here", "gift card", "limited offer", "money", "credit card", "bitcoin", "investment"
  ];

  void checkSpam() {
    String text = _smsController.text.toLowerCase();
    bool isSpam = spamKeywords.any((word) => text.contains(word));

    setState(() {
      _result = isSpam ? "Spam" : "Ham";
    });
  }

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    bool isDarkMode = themeProvider.isDarkMode;

    return Scaffold(
      backgroundColor: isDarkMode ? Color(0xFF121212) : Colors.white,
      appBar: AppBar(
        title: Text("Spam Detector"),
        backgroundColor: isDarkMode ? Color(0xFF1E1E1E) : Colors.white,
        elevation: 0,
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Enter SMS Message",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: isDarkMode ? Colors.white : Colors.black),
            ),
            SizedBox(height: 10),
            TextField(
              controller: _smsController,
              style: TextStyle(color: isDarkMode ? Colors.white : Colors.black),
              decoration: InputDecoration(
                filled: true,
                fillColor: isDarkMode ? Color(0xFF2A2A2A) : Colors.white,
                hintText: "Type your message here...",
                hintStyle: TextStyle(color: isDarkMode ? Colors.white54 : Colors.grey[600]),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: checkSpam,
              child: Container(
                height: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFF6B8AFB),
                ),
                child: Center(
                  child: Text(
                    "Check Spam",
                    style: TextStyle(fontSize: 17, color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            if (_result.isNotEmpty)
              Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: _result == "Spam"
                      ? Colors.redAccent.withOpacity(0.2)
                      : Colors.greenAccent.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    Icon(
                      _result == "Spam" ? IconlyLight.danger : IconlyLight.shield_done,
                      color: _result == "Spam" ? Colors.redAccent : Colors.green,
                    ),
                    SizedBox(width: 10),
                    Text(
                      _result,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: isDarkMode ? Colors.white : Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
