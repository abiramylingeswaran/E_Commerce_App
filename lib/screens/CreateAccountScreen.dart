import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:e_commerce_app/screens/Login.dart';

class CreateAccountScreen extends StatefulWidget {
  @override
  _CreateAccountScreenState createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();

  void _createAccount() {
    if (_formKey.currentState!.validate()) {
      // Handle account creation logic here

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Account Created Successfully')),
      );

      // Navigate to Login Screen after account creation
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        title: Text("Create Account"),
        backgroundColor: isDarkMode ? Colors.black : Colors.blue,
      ),
      body: Container(
        color: isDarkMode ? Colors.black : Colors.white,
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                controller: _usernameController,
                decoration: InputDecoration(
                  labelText: 'Username',
                  labelStyle: TextStyle(
                    color: isDarkMode ? Colors.white70 : Colors.black87,
                  ),
                  fillColor: isDarkMode ? Colors.grey[800] : Colors.grey[200],
                  filled: true,
                  border: OutlineInputBorder(),
                ),
                style: TextStyle(
                  color: isDarkMode ? Colors.white : Colors.black,
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your username';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                  labelStyle: TextStyle(
                    color: isDarkMode ? Colors.white70 : Colors.black87,
                  ),
                  fillColor: isDarkMode ? Colors.grey[800] : Colors.grey[200],
                  filled: true,
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.emailAddress,
                style: TextStyle(
                  color: isDarkMode ? Colors.white : Colors.black,
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                    return 'Please enter a valid email address';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: _phoneController,
                decoration: InputDecoration(
                  labelText: 'Phone Number',
                  labelStyle: TextStyle(
                    color: isDarkMode ? Colors.white70 : Colors.black87,
                  ),
                  fillColor: isDarkMode ? Colors.grey[800] : Colors.grey[200],
                  filled: true,
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.phone,
                style: TextStyle(
                  color: isDarkMode ? Colors.white : Colors.black,
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your phone number';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: _addressController,
                decoration: InputDecoration(
                  labelText: 'Address',
                  labelStyle: TextStyle(
                    color: isDarkMode ? Colors.white70 : Colors.black87,
                  ),
                  fillColor: isDarkMode ? Colors.grey[800] : Colors.grey[200],
                  filled: true,
                  border: OutlineInputBorder(),
                ),
                style: TextStyle(
                  color: isDarkMode ? Colors.white : Colors.black,
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your address';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: _lastNameController,
                decoration: InputDecoration(
                  labelText: 'Last Name',
                  labelStyle: TextStyle(
                    color: isDarkMode ? Colors.white70 : Colors.black87,
                  ),
                  fillColor: isDarkMode ? Colors.grey[800] : Colors.grey[200],
                  filled: true,
                  border: OutlineInputBorder(),
                ),
                style: TextStyle(
                  color: isDarkMode ? Colors.white : Colors.black,
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your last name';
                  }
                  return null;
                },
              ),
              SizedBox(height: 24),
              ElevatedButton(
                onPressed: _createAccount,
                style: ElevatedButton.styleFrom(
                  backgroundColor: isDarkMode ? Colors.blueGrey : Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  padding:
                      EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
                ),
                child: Text(
                  'Create Account',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
