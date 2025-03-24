// import 'package:flutter/material.dart';
// import 'package:iconly/iconly.dart';
// import 'package:sms_spam_detector_app/screens/home_screen.dart';


// class HistoryScreen extends StatelessWidget {
//   final List<Map<String, String>> smsHistory = [
//     {"message": "Your bank account has been compromised!", "status": "Spam"},
//     {"message": "Can you send me the report?", "status": "Ham"},
//     {"message": "Win a free iPhone now!", "status": "Spam"},
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         title: Text("History"),
//         backgroundColor: Colors.white,
//         elevation: 0,
//         centerTitle: true,
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(24),
//         child: ListView.builder(
//           itemCount: smsHistory.length,
//           itemBuilder: (context, index) {
//             final sms = smsHistory[index];
//             return MessageTile(message: sms["message"]!, status: sms["status"]!);
//           },
//         ),
//       ),
//     );
//   }
// }
