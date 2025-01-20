import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:e_commerce_app/screens/login.dart';

class AccountSettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account Settings'),
        backgroundColor: const Color.fromARGB(255, 8, 59, 161),
      ),
      body: Container(
        color: Theme.of(context).brightness == Brightness.dark
            ? Colors.black
            : Colors.white,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Email Address Section
            Text(
              "Change Email Address",
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).brightness == Brightness.dark
                    ? Colors.white
                    : Colors.black,
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'New Email Address',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.emailAddress,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a new email address';
                } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                  return 'Please enter a valid email address';
                }
                return null;
              },
            ),
            SizedBox(height: 16),

            // Password Section
            Text(
              "Change Password",
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).brightness == Brightness.dark
                    ? Colors.white
                    : Colors.black,
              ),
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'New Password',
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a new password';
                }
                return null;
              },
            ),
            SizedBox(height: 16),

            // Profile Picture Section
            Text(
              "Change Profile Picture",
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).brightness == Brightness.dark
                    ? Colors.white
                    : Colors.black,
              ),
            ),
            GestureDetector(
              onTap: () {
                // Handle profile picture change
                // You can use ImagePicker or similar package here
              },
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/default_profile.png'),
                child: Icon(
                  Icons.camera_alt,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 24),

            // Save Changes Button
            ElevatedButton(
              onPressed: () {
                // Save changes and navigate back
                Get.back();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 8, 59, 161),
              ),
              child: Text(
                'Save Changes',
                style: TextStyle(
                  color: const Color.fromARGB(255, 253, 254, 255),
                ),
              ),
            ),
            SizedBox(height: 16),

            // Cancel Button
            ElevatedButton(
              onPressed: () {
                // Cancel changes and navigate back
                Get.back();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 161, 8, 8),
              ),
              child: Text(
                'Cancel',
                style: TextStyle(
                  color: const Color.fromARGB(255, 253, 254, 255),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


