// import 'package:flutter/material.dart';
// import 'package:iconly/iconly.dart';
// import 'package:provider/provider.dart';
// import 'package:sms_spam_detector_app/themes/theme_privider.dart';


// class ProfileScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final themeProvider = Provider.of<ThemeProvider>(context);
//     bool isDarkMode = themeProvider.isDarkMode;

//     return Scaffold(
//       backgroundColor: isDarkMode ? Color(0xFF121212) : Colors.white,
//       appBar: AppBar(
//         title: Text("Profile"),
//         backgroundColor: isDarkMode ? Color(0xFF1E1E1E) : Colors.white,
//         elevation: 0,
//         centerTitle: true,
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(24),
//         child: Column(
//           children: [
//             // Profile Avatar
//             Center(
//               child: CircleAvatar(
//                 radius: 50,
//                 backgroundColor: isDarkMode ? Colors.white24 : Color(0xFFEBEFFF),
//                 child: Icon(IconlyLight.profile, size: 50, color: Color(0xFF6B8AFB)),
//               ),
//             ),
//             SizedBox(height: 10),
//             Text(
//               "Abdiaziiz",
//               style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: isDarkMode ? Colors.white : Colors.black),
//             ),
//             Text(
//               "abdicode@gmail.com",
//               style: TextStyle(fontSize: 14, color: isDarkMode ? Colors.white70 : Colors.black54),
//             ),
//             SizedBox(height: 30),

//             // Profile Settings
//             ProfileOption(
//               icon: IconlyLight.edit,
//               title: "Edit Profile",
//               isDarkMode: isDarkMode,
//               onTap: () {},
//             ),
//             ProfileOption(
//               icon: IconlyLight.notification,
//               title: "Notifications",
//               isDarkMode: isDarkMode,
//               onTap: () {},
//             ),
//             ProfileOption(
//               icon: IconlyLight.setting,
//               title: "Settings",
//               isDarkMode: isDarkMode,
//               onTap: () {},
//             ),
//             Spacer(),

//             // Logout Button
//             GestureDetector(
//               onTap: () {
//                 // Logout Functionality Here
//               },
//               child: Container(
//                 height: 55,
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                   color: Colors.redAccent,
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 child: Center(
//                   child: Text(
//                     "Logout",
//                     style: TextStyle(fontSize: 17, color: Colors.white),
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(height: 20),
//           ],
//         ),
//       ),
//     );
//   }
// }

// // Profile Option Widget
// class ProfileOption extends StatelessWidget {
//   final IconData icon;
//   final String title;
//   final bool isDarkMode;
//   final VoidCallback onTap;

//   const ProfileOption({required this.icon, required this.title, required this.isDarkMode, required this.onTap});

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Container(
//         margin: EdgeInsets.only(bottom: 12),
//         padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
//         decoration: BoxDecoration(
//           color: isDarkMode ? Color(0xFF2A2A2A) : Colors.white,
//           borderRadius: BorderRadius.circular(12),
//           boxShadow: [
//             BoxShadow(
//               color: isDarkMode ? Colors.black12 : Colors.black26,
//               blurRadius: 2,
//               offset: Offset(1, 1),
//             ),
//           ],
//         ),
//         child: Row(
//           children: [
//             Icon(icon, size: 24, color: isDarkMode ? Colors.white : Color(0xFF6B8AFB)),
//             SizedBox(width: 12),
//             Text(
//               title,
//               style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: isDarkMode ? Colors.white : Colors.black),
//             ),
//             Spacer(),
//             Icon(Icons.arrow_forward_ios, size: 16, color: isDarkMode ? Colors.white54 : Colors.black54),
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


class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    bool isDarkMode = themeProvider.isDarkMode;

    return Scaffold(
      backgroundColor: isDarkMode ? Color(0xFF121212) : Colors.white,
      appBar: AppBar(
        title: Text("Profile"),
        backgroundColor: isDarkMode ? Color(0xFF1E1E1E) : Colors.white,
        elevation: 0,
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Profile Image
            Container(
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Color(0xFF6B8AFB), width: 2),
              ),
              child: CircleAvatar(
                radius: 50,
                //backgroundImage: AssetImage("assets/images/profile.jpg"), // Replace with your image
              ),
            ),
            SizedBox(height: 10),
            Text(
              " Abdiaziiz",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: isDarkMode ? Colors.white : Colors.black,
              ),
            ),
            SizedBox(height: 5),
            Text(
              "abdicode22@gmail.com",
              style: TextStyle(
                fontSize: 14,
                color: isDarkMode ? Colors.white70 : Colors.grey[600],
              ),
            ),
            SizedBox(height: 30),

            // Profile Options
            ProfileOption(
              icon: IconlyLight.profile,
              title: "Edit Profile",
              isDarkMode: isDarkMode,
              onTap: () {},
            ),
            ProfileOption(
              icon: IconlyLight.setting,
              title: "Settings",
              isDarkMode: isDarkMode,
              onTap: () {},
            ),
            ProfileOption(
              icon: IconlyLight.lock,
              title: "Privacy & Security",
              isDarkMode: isDarkMode,
              onTap: () {},
            ),
            ProfileOption(
              icon: IconlyLight.notification,
              title: "Notifications",
              isDarkMode: isDarkMode,
              onTap: () {},
            ),
            SizedBox(height: 20),

            // Logout Button
            GestureDetector(
              onTap: () {
                // Add logout functionality here
              },
              child: Container(
                height: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.redAccent,
                ),
                child: Center(
                  child: Text(
                    "Logout",
                    style: TextStyle(fontSize: 17, color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Profile Option Tile
class ProfileOption extends StatelessWidget {
  final IconData icon;
  final String title;
  final bool isDarkMode;
  final VoidCallback onTap;

  const ProfileOption({required this.icon, required this.title, required this.isDarkMode, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(bottom: 12),
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: isDarkMode ? Color(0xFF2A2A2A) : Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: isDarkMode ? Colors.black12 : Colors.black26,
              blurRadius: 4,
              offset: Offset(2, 2),
            ),
          ],
        ),
        child: Row(
          children: [
            Icon(icon, size: 24, color: isDarkMode ? Colors.white : Color(0xFF6B8AFB)),
            SizedBox(width: 10),
            Text(
              title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: isDarkMode ? Colors.white : Colors.black,
              ),
            ),
            Spacer(),
            Icon(Icons.arrow_forward_ios, size: 16, color: isDarkMode ? Colors.white70 : Colors.grey),
          ],
        ),
      ),
    );
  }
}
