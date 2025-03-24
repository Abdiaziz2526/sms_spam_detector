import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:provider/provider.dart';
import 'package:sms_spam_detector_app/themes/theme_privider.dart';


class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      backgroundColor: themeProvider.isDarkMode ? Color(0xFF1E1E1E) : Colors.white,
      appBar: AppBar(
        title: Text("Settings"),
        backgroundColor: themeProvider.isDarkMode ? Color(0xFF1E1E1E) : Colors.white,
        elevation: 0,
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Theme Switcher
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: themeProvider.isDarkMode ? Color(0xFF2A2A2A) : Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: themeProvider.isDarkMode ? Colors.black12 : Colors.black26,
                    blurRadius: 2,
                    offset: Offset(1, 1),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(IconlyLight.activity, color: Color(0xFF6B8AFB)),
                      SizedBox(width: 10),
                      Text(
                        "Dark Mode",
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: themeProvider.isDarkMode ? Colors.white : Colors.black),
                      ),
                    ],
                  ),
                  Switch(
                    value: themeProvider.isDarkMode,
                    activeColor: Color(0xFF6B8AFB),
                    onChanged: (value) => themeProvider.toggleTheme(),
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
