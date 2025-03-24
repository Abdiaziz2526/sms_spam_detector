// import 'dart:math';
// import 'package:flutter/material.dart';
// import 'package:iconly/iconly.dart';

// void main() {
//   runApp(SMSDetectorApp());
// }

// class SMSDetectorApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'SMS Spam Detector',
//       theme: ThemeData(
//         brightness: Brightness.light,
//         primarySwatch: Colors.blue,
//         fontFamily: 'Poppins',
//       ),
//       home: SMSHomePage(),
//     );
//   }
// }

// class SMSHomePage extends StatefulWidget {
//   @override
//   _SMSHomePageState createState() => _SMSHomePageState();
// }

// class _SMSHomePageState extends State<SMSHomePage> {
//   TextEditingController _smsController = TextEditingController();
//   String _result = '';
//   bool isLoading = false;

//   final List<String> randomMessages = [
//     "This looks like a genuine message. No spam detected!",
//     "Warning! This message might contain phishing links.",
//     "Congratulations! You have won a million dollars 🎉 (Just kidding, but this looks like spam).",
//     "Be careful! This message could be a scam attempt.",
//     "Hmm... This message seems safe, but always be cautious!",
//     "Possible spam detected! Don't click on suspicious links.",
//     "This message is clean. No issues found!",
//   ];

//   void checkSpam() {
//     if (_smsController.text.isEmpty) return;

//     setState(() {
//       isLoading = true;
//       _result = "";
//     });

//     Future.delayed(Duration(seconds: 2), () {
//       setState(() {
//         isLoading = false;
//         _result = randomMessages[Random().nextInt(randomMessages.length)];
//       });
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0,
//         title: Text(
//           "SMS Spam Detector",
//           style: TextStyle(
//             fontSize: 22,
//             fontWeight: FontWeight.w500,
//             color: Colors.black,
//           ),
//         ),
//         centerTitle: true,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 20),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Icon(IconlyLight.message, size: 80, color: Colors.blueGrey),
//             SizedBox(height: 20),
//             TextField(
//               controller: _smsController,
//               maxLines: 3,
//               style: TextStyle(color: Colors.black),
//               decoration: InputDecoration(
//                 hintText: "Enter SMS Message...",
//                 hintStyle: TextStyle(color: Colors.grey),
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(12),
//                 ),
//                 prefixIcon: Icon(IconlyLight.edit, color: Colors.blueGrey),
//               ),
//             ),
//             SizedBox(height: 20),
//             GestureDetector(
//               onTap: checkSpam,
//               child: AnimatedContainer(
//                 duration: Duration(milliseconds: 300),
//                 height: 50,
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                   color: isLoading ? Colors.grey : Colors.blueAccent,
//                   borderRadius: BorderRadius.circular(12),
//                 ),
//                 alignment: Alignment.center,
//                 child: isLoading
//                     ? CircularProgressIndicator(color: Colors.white)
//                     : Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Icon(IconlyLight.send, color: Colors.white),
//                           SizedBox(width: 8),
//                           Text(
//                             "Check Spam",
//                             style: TextStyle(
//                               fontSize: 18,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.white,
//                             ),
//                           ),
//                         ],
//                       ),
//               ),
//             ),
//             SizedBox(height: 20),
//             if (_result.isNotEmpty)
//               Container(
//                 padding: EdgeInsets.all(12),
//                 decoration: BoxDecoration(
//                   color: Colors.blueGrey.shade100,
//                   borderRadius: BorderRadius.circular(12),
//                 ),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Icon(IconlyBold.document, color: Colors.black),
//                     SizedBox(width: 10),
//                     Expanded(
//                       child: Text(
//                         _result,
//                         textAlign: TextAlign.center,
//                         style: TextStyle(
//                           fontSize: 16,
//                           fontWeight: FontWeight.w500,
//                           color: Colors.black,
//                         ),
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
