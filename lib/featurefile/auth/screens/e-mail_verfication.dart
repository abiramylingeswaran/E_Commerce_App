import 'package:flutter/material.dart';

class EmailVerificationScreen extends StatefulWidget {
  @override
  _EmailVerificationScreenState createState() =>
      _EmailVerificationScreenState();
}

class _EmailVerificationScreenState extends State<EmailVerificationScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _verificationCodeController =
      TextEditingController();

  void _verifyCode() {
    if (_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Email Verified Successfully')),
      );
    }
  }

  void _resendCode() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Verification code resent')),
    );
  }

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        title: Text("Email Verification"),
        backgroundColor: isDarkMode ? Colors.black : Colors.blue,
      ),
      body: Container(
        color: isDarkMode ? Colors.black : Colors.white,
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Enter the verification code sent to your email.",
                style: TextStyle(
                  color: isDarkMode ? Colors.white70 : Colors.black87,
                  fontSize: 16.0,
                ),
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: _verificationCodeController,
                decoration: InputDecoration(
                  labelText: 'Verification Code',
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
                    return 'Please enter the verification code';
                  }
                  return null;
                },
              ),
              SizedBox(height: 24),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: _verifyCode,
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            isDarkMode ? Colors.blueGrey : Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        padding: EdgeInsets.symmetric(
                            horizontal: 24.0, vertical: 12.0),
                      ),
                      child: Text(
                        'Verify',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Center(
                child: TextButton(
                  onPressed: _resendCode,
                  child: Text(
                    'Resend Code',
                    style: TextStyle(
                      color: isDarkMode ? Colors.blue : Colors.blueAccent,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: EmailVerificationScreen(),
    debugShowCheckedModeBanner: false,
  ));
}
