import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class MessageTile extends StatelessWidget {
  final String message;
  final String status;

  const MessageTile({required this.message, required this.status, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;

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
            offset: Offset(1, 1),
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
