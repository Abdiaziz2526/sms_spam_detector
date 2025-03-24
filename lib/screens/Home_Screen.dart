// // import 'package:flutter/material.dart';
// // import 'package:iconly/iconly.dart';

// // class HomeScreen extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       backgroundColor: Colors.white,
// //       appBar: AppBar(
// //         backgroundColor: Colors.white,
// //         elevation: 0,
// //         centerTitle: true,
// //         title: Text(
// //           "Dashboard",
// //           style: TextStyle(
// //             fontSize: 22,
// //             fontWeight: FontWeight.bold,
// //             color: Color(0xFF6B8AFB),
// //           ),
// //         ),
// //       ),
// //       body: Padding(
// //         padding: const EdgeInsets.symmetric(horizontal: 24),
// //         child: Column(
// //           children: [
// //             SizedBox(height: 20),
// //             // Welcome Text
// //             Align(
// //               alignment: Alignment.centerLeft,
// //               child: Text(
// //                 "Hello, User 👋",
// //                 style: TextStyle(
// //                   fontSize: 24,
// //                   fontWeight: FontWeight.bold,
// //                   color: Color(0xFF6B8AFB),
// //                 ),
// //               ),
// //             ),
// //             SizedBox(height: 5),
// //             Align(
// //               alignment: Alignment.centerLeft,
// //               child: Text(
// //                 "Let's analyze your SMS for spam detection!",
// //                 style: TextStyle(fontSize: 14, color: Colors.grey[600]),
// //               ),
// //             ),
// //             SizedBox(height: 30),

// //             // Action Buttons
// //             Row(
// //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //               children: [
// //                 HomeOption(
// //                   icon: IconlyLight.shield_done,
// //                   title: "Spam Detector",
// //                   onTap: () {
// //                     // Navigate to Spam Detector
// //                   },
// //                 ),
// //                 HomeOption(
// //                   icon: IconlyLight.document,
// //                   title: "History",
// //                   onTap: () {
// //                     // Navigate to History
// //                   },
// //                 ),
// //               ],
// //             ),
// //             SizedBox(height: 20),
// //             Row(
// //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //               children: [
// //                 HomeOption(
// //                   icon: IconlyLight.setting,
// //                   title: "Settings",
// //                   onTap: () {
// //                     // Navigate to Settings
// //                   },
// //                 ),
// //                 HomeOption(
// //                   icon: IconlyLight.profile,
// //                   title: "Profile",
// //                   onTap: () {
// //                     // Navigate to Profile
// //                   },
// //                 ),
// //               ],
// //             ),
// //             SizedBox(height: 30),

// //             // Recent Messages Section
// //             Align(
// //               alignment: Alignment.centerLeft,
// //               child: Text(
// //                 "Recent Messages",
// //                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
// //               ),
// //             ),
// //             SizedBox(height: 10),
// //             Expanded(
// //               child: ListView(
// //                 children: [
// //                   MessageTile(
// //                     message: "Congratulations! You won a gift 🎁",
// //                     status: "Spam",
// //                   ),
// //                   MessageTile(
// //                     message: "Hey, let's meet at 5 PM",
// //                     status: "Ham",
// //                   ),
// //                   MessageTile(
// //                     message: "Click this link to claim your reward!",
// //                     status: "Spam",
// //                   ),
// //                 ],
// //               ),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }

// // // Home Screen Option (Square Button)
// // class HomeOption extends StatelessWidget {
// //   final IconData icon;
// //   final String title;
// //   final VoidCallback onTap;

// //   const HomeOption({required this.icon, required this.title, required this.onTap});

// //   @override
// //   Widget build(BuildContext context) {
// //     return GestureDetector(
// //       onTap: onTap,
// //       child: Container(
// //         width: MediaQuery.of(context).size.width * 0.42,
// //         padding: EdgeInsets.symmetric(vertical: 16),
// //         decoration: BoxDecoration(
// //           color: Color(0xFFEBEFFF),
// //           borderRadius: BorderRadius.circular(12),
// //           boxShadow: [
// //             BoxShadow(
// //               color: Colors.black12,
// //               blurRadius: 4,
// //               offset: Offset(2, 2),
// //             ),
// //           ],
// //         ),
// //         child: Column(
// //           mainAxisAlignment: MainAxisAlignment.center,
// //           children: [
// //             Icon(icon, size: 30, color: Color(0xFF6B8AFB)),
// //             SizedBox(height: 10),
// //             Text(
// //               title,
// //               style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }

// // // Recent Messages Tile
// // class MessageTile extends StatelessWidget {
// //   final String message;
// //   final String status;

// //   const MessageTile({required this.message, required this.status});

// //   @override
// //   Widget build(BuildContext context) {
// //     return Card(
// //       elevation: 2,
// //       margin: EdgeInsets.symmetric(vertical: 6),
// //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
// //       child: ListTile(
// //         contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
// //         title: Text(
// //           message,
// //           style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
// //         ),
// //         subtitle: Text(
// //           status,
// //           style: TextStyle(
// //             color: status == "Spam" ? Colors.redAccent : Colors.green,
// //             fontWeight: FontWeight.bold,
// //           ),
// //         ),
// //         leading: Icon(
// //           status == "Spam" ? IconlyLight.danger : IconlyLight.shield_done,
// //           color: status == "Spam" ? Colors.redAccent : Colors.green,
// //         ),
// //       ),
// //     );
// //   }
// // }

// import 'package:flutter/material.dart';
// import 'package:iconly/iconly.dart';
// import 'package:sms_spam_detector_app/screens/history_screen.dart';
// import 'package:sms_spam_detector_app/screens/setting_screen.dart';
// import 'package:sms_spam_detector_app/screens/spam_detector_screen.dart';

// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0,
//         centerTitle: true,
//         title: Text(
//           "Dashboard",
//           style: TextStyle(
//             fontSize: 22,
//             fontWeight: FontWeight.bold,
//             color: Color(0xFF6B8AFB),
//           ),
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 24),
//         child: Column(
//           children: [
//             SizedBox(height: 20),
//             // Welcome Text
//             Align(
//               alignment: Alignment.centerLeft,
//               child: Text(
//                 "Hello, User 👋",
//                 style: TextStyle(
//                   fontSize: 24,
//                   fontWeight: FontWeight.bold,
//                   color: Color(0xFF6B8AFB),
//                 ),
//               ),
//             ),
//             SizedBox(height: 5),
//             Align(
//               alignment: Alignment.centerLeft,
//               child: Text(
//                 "Let's analyze your SMS for spam detection!",
//                 style: TextStyle(fontSize: 14, color: Colors.grey[600]),
//               ),
//             ),
//             SizedBox(height: 30),

//             // Action Buttons
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 HomeOption(
//                   icon: IconlyLight.shield_done,
//                   title: "Spam Detector",
//                   onTap: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => SpamDetectorScreen(),
//                       ),
//                     );
//                   },
//                 ),
//                 HomeOption(
//                   icon: IconlyLight.document,
//                   title: "History",
//                   onTap: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(builder: (context) => HistoryScreen()),
//                     );
//                   },
//                 ),
                
//               ],
//             ),
//             SizedBox(height: 20),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 HomeOption(
//                   icon: IconlyLight.setting,
//                   title: "Settings",
//                   onTap: () {
//                      Navigator.push(
//                       context,
//                       MaterialPageRoute(builder: (context) => SettingsScreen()),
//                     );

//                   },
//                 ),
//                 HomeOption(
//                   icon: IconlyLight.profile,
//                   title: "Profile",
//                   onTap: () {},
//                 ),
//               ],
//             ),
//             SizedBox(height: 30),

//             // Recent Messages Section
//             Align(
//               alignment: Alignment.centerLeft,
//               child: Text(
//                 "Recent Messages",
//                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
//               ),
//             ),
//             SizedBox(height: 10),
//             Expanded(
//               child: ListView(
//                 children: [
//                   MessageTile(
//                     message: "Congratulations! You won a gift 🎁",
//                     status: "Spam",
//                   ),
//                   MessageTile(
//                     message: "Hey, let's meet at 5 PM",
//                     status: "Ham",
//                   ),
//                   MessageTile(
//                     message: "Click this link to claim your reward!",
//                     status: "Spam",
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class HomeOption extends StatelessWidget {
//   final IconData icon;
//   final String title;
//   final VoidCallback onTap;

//   const HomeOption({required this.icon, required this.title, required this.onTap});

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Container(
//         width: MediaQuery.of(context).size.width * 0.42,
//         padding: EdgeInsets.symmetric(vertical: 16),
//         decoration: BoxDecoration(
//           color: Color(0xFFEBEFFF),
//           borderRadius: BorderRadius.circular(12),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black12,
//               blurRadius: 4,
//               offset: Offset(2, 2),
//             ),
//           ],
//         ),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Icon(icon, size: 30, color: Color(0xFF6B8AFB)),
//             SizedBox(height: 10),
//             Text(
//               title,
//               style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


// // Recent Messages Tile (LESS Shadow & WHITE Background)
// class MessageTile extends StatelessWidget {
//   final String message;
//   final String status;

//   const MessageTile({required this.message, required this.status});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.symmetric(vertical: 6),
//       padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(12),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black12,
//             blurRadius: 2,
//             offset: Offset(1, 1), // Reduced shadow
//           ),
//         ],
//       ),
//       child: ListTile(
//         contentPadding: EdgeInsets.zero,
//         title: Text(
//           message,
//           style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
//         ),
//         subtitle: Text(
//           status,
//           style: TextStyle(
//             color: status == "Spam" ? Colors.redAccent : Colors.green,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         leading: Icon(
//           status == "Spam" ? IconlyLight.danger : IconlyLight.shield_done,
//           color: status == "Spam" ? Colors.redAccent : Colors.green,
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:provider/provider.dart';
import 'package:sms_spam_detector_app/screens/profile_screen.dart';
import 'package:sms_spam_detector_app/screens/setting_screen.dart';
import 'package:sms_spam_detector_app/themes/theme_privider.dart';



import 'spam_detector_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      backgroundColor: themeProvider.isDarkMode ? Color(0xFF121212) : Colors.white,
      appBar: AppBar(
        backgroundColor: themeProvider.isDarkMode ? Color(0xFF1E1E1E) : Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Dashboard",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: themeProvider.isDarkMode ? Colors.white : Color(0xFF6B8AFB),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            SizedBox(height: 20),

            // Welcome Text
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Hello, User 👋",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: themeProvider.isDarkMode ? Colors.white : Color(0xFF6B8AFB),
                ),
              ),
            ),
            SizedBox(height: 5),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Let's analyze your SMS for spam detection!",
                style: TextStyle(fontSize: 14, color: themeProvider.isDarkMode ? Colors.white70 : Colors.grey[600]),
              ),
            ),
            SizedBox(height: 30),

            // Action Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HomeOption(
                  icon: IconlyLight.shield_done,
                  title: "Spam Detector",
                  isDarkMode: themeProvider.isDarkMode,
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => SpamDetectorScreen())),
                ),
                HomeOption(
                  icon: IconlyLight.document,
                  title: "History",
                  isDarkMode: themeProvider.isDarkMode,
                  onTap: () {
                    
                  },
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HomeOption(
                  icon: IconlyLight.setting,
                  title: "Settings",
                  isDarkMode: themeProvider.isDarkMode,
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => SettingsScreen())),
                ),
                HomeOption(
                  icon: IconlyLight.profile,
                  title: "Profile",
                  isDarkMode: themeProvider.isDarkMode,
                   onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileScreen())),
                ),
              ],
            ),
            SizedBox(height: 30),

            // Recent Messages Section
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Recent Messages",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: themeProvider.isDarkMode ? Colors.white : Colors.black),
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView(
                children: [
                  MessageTile(
                    message: "Congratulations! You won a gift 🎁",
                    status: "Spam",
                    isDarkMode: themeProvider.isDarkMode,
                  ),
                  MessageTile(
                    message: "Hey, let's meet at 5 PM",
                    status: "Ham",
                    isDarkMode: themeProvider.isDarkMode,
                  ),
                  MessageTile(
                    message: "Click this link to claim your reward!",
                    status: "Spam",
                    isDarkMode: themeProvider.isDarkMode,
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

// Home Screen Option (Square Button)
class HomeOption extends StatelessWidget {
  final IconData icon;
  final String title;
  final bool isDarkMode;
  final VoidCallback onTap;

  const HomeOption({required this.icon, required this.title, required this.isDarkMode, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.42,
        padding: EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
          color: isDarkMode ? Color(0xFF2A2A2A) : Color(0xFFEBEFFF),
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: isDarkMode ? Colors.black12 : Colors.black26,
              blurRadius: 4,
              offset: Offset(2, 2),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 30, color: isDarkMode ? Colors.white : Color(0xFF6B8AFB)),
            SizedBox(height: 10),
            Text(
              title,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: isDarkMode ? Colors.white : Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}

// Recent Messages Tile (White in Light Mode, Dark Gray in Dark Mode)
class MessageTile extends StatelessWidget {
  final String message;
  final String status;
  final bool isDarkMode;

  const MessageTile({required this.message, required this.status, required this.isDarkMode});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 6),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      decoration: BoxDecoration(
        color: isDarkMode ? Color(0xFF2A2A2A) : Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: isDarkMode ? Colors.black12 : Colors.black26,
            blurRadius: 2,
            offset: Offset(1, 1), // Reduced shadow
          ),
        ],
      ),
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        title: Text(
          message,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: isDarkMode ? Colors.white : Colors.black),
        ),
        subtitle: Text(
          status,
          style: TextStyle(
            color: status == "Spam" ? Colors.redAccent : Colors.green,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: Icon(
          status == "Spam" ? IconlyLight.danger : IconlyLight.shield_done,
          color: status == "Spam" ? Colors.redAccent : Colors.green,
        ),
      ),
    );
  }
}
