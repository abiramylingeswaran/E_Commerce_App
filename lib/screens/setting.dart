import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:e_commerce_app/screens/login.dart';
import 'package:e_commerce_app/screens/accountsetting.dart';

class SettingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Theme.of(context).brightness == Brightness.dark
            ? Colors.black
            : Colors.white,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title Section
            Text(
              "Settings",
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).brightness == Brightness.dark
                    ? Colors.white
                    : Colors.black,
              ),
            ),
            Text(
              "Manage your preferences here.",
              style: TextStyle(
                fontSize: 14.0,
                color: Theme.of(context).brightness == Brightness.dark
                    ? Colors.grey
                    : Colors.blueGrey,
              ),
            ),
            SizedBox(height: 16),
            SwitchListTile(
              title: Text(
                'Enable Notifications',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Theme.of(context).brightness == Brightness.dark
                      ? Colors.white
                      : Colors.black,
                ),
              ),
              value: true, // You can make this dynamic later
              onChanged: (bool value) {
                // Handle toggle change here
              },
            ),
            SizedBox(height: 16),

            // Account Settings Button
            ElevatedButton(
              onPressed: () {
                // Navigate to Account Settings Screen
                Get.to(() => AccountSettingsScreen());
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 8, 59, 161),
              ),
              child: Text(
                'Account Settings',
                style: TextStyle(
                  color: const Color.fromARGB(255, 253, 254, 255),
                ),
              ),
            ),
            SizedBox(height: 16),

            // Privacy Settings Button
            ElevatedButton(
              onPressed: () {
                // Navigate to Privacy Settings Screen
                // Get.to(() => PrivacySettingsScreen());
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 8, 59, 161),
              ),
              child: Text(
                'Privacy Settings',
                style: TextStyle(
                  color: const Color.fromARGB(255, 253, 254, 255),
                ),
              ),
            ),
            SizedBox(height: 16),

            // Logout Button
            ElevatedButton(
              onPressed: () {
                // Implement logout functionality
                Get.offAll(() => LoginScreen());
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 161, 8, 8),
              ),
              child: Text(
                'Logout',
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
