// import 'package:flutter/material.dart';
// import 'package:sms_spam_detector_app/screens/Home_Screen.dart';





// class LoginScreen extends StatefulWidget {
//   const LoginScreen({super.key});

//   @override
//   State<LoginScreen> createState() => _LoginScreenState();
// }

// class _LoginScreenState extends State<LoginScreen> {
//   final _emailController = TextEditingController();
//   final _passwordController = TextEditingController();
//   bool _isEmailSubmitted = false;
//   bool _isPasswordSubmitted = false;

//   bool get _showEmailCheckmark => 
//       _isEmailSubmitted && _emailController.text.isNotEmpty;
  
//   bool get _showPasswordCheckmark => 
//       _isPasswordSubmitted && _passwordController.text.isNotEmpty;

//   @override
//   void dispose() {
//     _emailController.dispose();
//     _passwordController.dispose();
//     super.dispose();
//   }

//   void _handleEmailSubmitted(String value) {
//     setState(() {
//       _isEmailSubmitted = true;
//     });
//     FocusScope.of(context).nextFocus(); // Move to next field
//   }

//   void _handlePasswordSubmitted(String value) {
//     setState(() {
//       _isPasswordSubmitted = true;
//     });
//     FocusScope.of(context).unfocus(); // Hide keyboard
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.all(24.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               // Logo
//               Container(
//                 padding: const EdgeInsets.all(8),
//                 decoration: BoxDecoration(
//                   color: const Color(0xFFEBEFFF),
//                   borderRadius: BorderRadius.circular(8),
//                 ),
//                 child: const Icon(
//                   Icons.square_outlined,
//                   color: Color(0xFF6B8AFB),
//                   size: 24,
//                 ),
//               ),
//               const SizedBox(height: 24),
              
//               // Welcome text
//               const Text(
//                 'Welcome\nBack!',
//                 style: TextStyle(
//                   fontSize: 28,
//                   fontWeight: FontWeight.bold,
//                   color: Color(0xFF6B8AFB),
//                   height: 1.2,
//                 ),
//               ),
//               const SizedBox(height: 12),
              
//               // Subtitle
//               Text(
//                 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut vel lectus sodales.',
//                 style: TextStyle(
//                   fontSize: 14,
//                   color: Colors.grey[400],
//                 ),
//               ),
//               const SizedBox(height: 32),
              
//               // Email field
//               const Text(
//                 'Email',
//                 style: TextStyle(
//                   fontSize: 14,
//                   fontWeight: FontWeight.w500,
//                 ),
//               ),
//               const SizedBox(height: 8),
//               TextField(
//                 controller: _emailController,
//                 keyboardType: TextInputType.emailAddress,
//                 onSubmitted: _handleEmailSubmitted,
//                 onTap: () {
//                   // Reset submission state when field is tapped again
//                   if (_isEmailSubmitted) {
//                     setState(() {
//                       _isEmailSubmitted = false;
//                     });
//                   }
//                 },
//                 decoration: InputDecoration(
//                   hintText: 'youremail@address.com',
//                   hintStyle: TextStyle(color: Colors.grey[400]),
//                   suffixIcon: _showEmailCheckmark
//                       ? const Icon(
//                           Icons.check,
//                           color: Colors.green,
//                         )
//                       : null,
//                 ),
//               ),
//               const SizedBox(height: 16),
              
//               // Password field
//               const Text(
//                 'Password',
//                 style: TextStyle(
//                   fontSize: 14,
//                   fontWeight: FontWeight.w500,
//                 ),
//               ),
//               const SizedBox(height: 8),
//               TextField(
//                 controller: _passwordController,
//                 obscureText: true,
//                 onSubmitted: _handlePasswordSubmitted,
//                 onTap: () {
//                   // Reset submission state when field is tapped again
//                   if (_isPasswordSubmitted) {
//                     setState(() {
//                       _isPasswordSubmitted = false;
//                     });
//                   }
//                 },
//                 decoration: InputDecoration(
//                   hintText: 'Type Password',
//                   hintStyle: TextStyle(color: Colors.grey[400]),
//                   suffixIcon: _showPasswordCheckmark
//                       ? const Icon(
//                           Icons.check,
//                           color: Colors.green,
//                         )
//                       : null,
//                 ),
//               ),
//               const SizedBox(height: 32),
              
             
//               // Sign in button and text
// GestureDetector(
//   onTap: () {
//     Navigator.pushReplacement(
//       context,
//       MaterialPageRoute(builder: (context) => HomeScreen()), // Navigate to HomeScreen
//     );
//   },
//   child: Container(
//     height: 55,
//     width: double.infinity, // Use full width dynamically
//     decoration: BoxDecoration(
//       borderRadius: BorderRadius.circular(10),
//       color: Color(0xFF6B8AFB),
//     ),
//     child: Center(
//       child: Text(
//         "Login",
//         style: TextStyle(fontSize: 17, color: Colors.white),
//       ),
//     ),
//   ),
// ),

            
//               const SizedBox(height: 24),
              
//               // Sign up and forgot password
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   TextButton(
//                     onPressed: () {
//                       // Handle sign up
//                     },
//                     child: const Text(
//                       'Sign up',
//                       style: TextStyle(
//                         color: Colors.black87,
//                       ),
//                     ),
//                   ),
//                   TextButton(
//                     onPressed: () {
//                       // Handle forgot password
//                     },
//                     child: const Text(
//                       'Forgot password?',
//                       style: TextStyle(
//                         color: Colors.redAccent,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sms_spam_detector_app/themes/theme_privider.dart';

import 'home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _isEmailSubmitted = false;
  bool _isPasswordSubmitted = false;

  bool get _showEmailCheckmark => 
      _isEmailSubmitted && _emailController.text.isNotEmpty;
  
  bool get _showPasswordCheckmark => 
      _isPasswordSubmitted && _passwordController.text.isNotEmpty;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _handleEmailSubmitted(String value) {
    setState(() {
      _isEmailSubmitted = true;
    });
    FocusScope.of(context).nextFocus(); // Move to next field
  }

  void _handlePasswordSubmitted(String value) {
    setState(() {
      _isPasswordSubmitted = true;
    });
    FocusScope.of(context).unfocus(); // Hide keyboard
  }

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    bool isDarkMode = themeProvider.isDarkMode;

    return Scaffold(
      backgroundColor: isDarkMode ? Color(0xFF121212) : Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Logo
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: isDarkMode ? Color(0xFF2A2A2A) : Color(0xFFEBEFFF),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Icon(
                  Icons.square_outlined,
                  color: Color(0xFF6B8AFB),
                  size: 24,
                ),
              ),
              const SizedBox(height: 24),
              
              // Welcome text
              Text(
                'Welcome\nBack!',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF6B8AFB),
                  height: 1.2,
                ),
              ),
              const SizedBox(height: 12),
              
              // Subtitle
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut vel lectus sodales.',
                style: TextStyle(
                  fontSize: 14,
                  color: isDarkMode ? Colors.white70 : Colors.grey[400],
                ),
              ),
              const SizedBox(height: 32),
              
              // Email field
              const Text(
                'Email',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 8),
              TextField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                onSubmitted: _handleEmailSubmitted,
                style: TextStyle(color: isDarkMode ? Colors.white : Colors.black),
                onTap: () {
                  // Reset submission state when field is tapped again
                  if (_isEmailSubmitted) {
                    setState(() {
                      _isEmailSubmitted = false;
                    });
                  }
                },
                decoration: InputDecoration(
                  filled: true,
                  fillColor: isDarkMode ? Color(0xFF2A2A2A) : Colors.white,
                  hintText: 'youremail@address.com',
                  hintStyle: TextStyle(color: isDarkMode ? Colors.white54 : Colors.grey[400]),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                  suffixIcon: _showEmailCheckmark
                      ? const Icon(Icons.check, color: Colors.green)
                      : null,
                ),
              ),
              const SizedBox(height: 16),
              
              // Password field
              const Text(
                'Password',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 8),
              TextField(
                controller: _passwordController,
                obscureText: true,
                onSubmitted: _handlePasswordSubmitted,
                style: TextStyle(color: isDarkMode ? Colors.white : Colors.black),
                onTap: () {
                  // Reset submission state when field is tapped again
                  if (_isPasswordSubmitted) {
                    setState(() {
                      _isPasswordSubmitted = false;
                    });
                  }
                },
                decoration: InputDecoration(
                  filled: true,
                  fillColor: isDarkMode ? Color(0xFF2A2A2A) : Colors.white,
                  hintText: 'Type Password',
                  hintStyle: TextStyle(color: isDarkMode ? Colors.white54 : Colors.grey[400]),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                  suffixIcon: _showPasswordCheckmark
                      ? const Icon(Icons.check, color: Colors.green)
                      : null,
                ),
              ),
              const SizedBox(height: 32),
              
              // Sign in button
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                },
                child: Container(
                  height: 55,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFF6B8AFB),
                  ),
                  child: Center(
                    child: Text(
                      "Login",
                      style: TextStyle(fontSize: 17, color: Colors.white),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              
              // Sign up and forgot password
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      // Handle sign up
                    },
                    child: Text(
                      'Sign up',
                      style: TextStyle(
                        color: isDarkMode ? Colors.white : Colors.black87,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      // Handle forgot password
                    },
                    child: const Text(
                      'Forgot password?',
                      style: TextStyle(
                        color: Colors.redAccent,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
