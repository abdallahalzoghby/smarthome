import 'package:flutter/material.dart';

class HelpAndNotesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Help & Notes'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Go back to the menu
          },
        ),
        backgroundColor: Colors.blue.shade800,
        centerTitle: true,
        elevation: 0,
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.blue.shade900,
              Colors.blue.shade700,
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Smart Home Help & Notes',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white, // Text color
                  ),
                ),
                SizedBox(height: 20.0),
                Text(
                  'Need help with Smart Home? This section provides answers to frequently asked questions, troubleshooting tips, and useful notes to enhance your experience.',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white, // Text color
                  ),
                ),
                SizedBox(height: 20.0),
                Text(
                  '**1. Getting Started**',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white, // Text color
                  ),
                ),
                Text(
                  'To begin using Smart Home, download and install the application from the App Store or Play Store. Once installed, open the app and follow the on-screen instructions to create an account or log in if you already have one. After setting up your account, you can start exploring the various features of the app.',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white, // Text color
                  ),
                ),
                SizedBox(height: 20.0),
                Text(
                  '**2. Adding Devices**',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white, // Text color
                  ),
                ),
                Text(
                  'To add smart devices to your Smart Home system, go to the "Add Device" section. You can add devices using Bluetooth, manually through the app, or by using voice commands. Follow the on-screen instructions to pair your devices with the app.',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white, // Text color
                  ),
                ),
                SizedBox(height: 20.0),
                Text(
                  '**3. Controlling Devices**',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white, // Text color
                  ),
                ),
                Text(
                  'Once your devices are added, you can control them from the app. You can turn lights on/off, adjust the temperature, lock/unlock doors, and more. The app provides an intuitive interface for easy control of your smart devices.',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white, // Text color
                  ),
                ),
                SizedBox(height: 20.0),
                Text(
                  '**4. Automation**',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white, // Text color
                  ),
                ),
                Text(
                  'Smart Home allows you to automate tasks for your smart devices. Create schedules to automatically turn off lights at a specific time, set up routines to control multiple devices with a single command, or create custom automations based on your preferences.',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white, // Text color
                  ),
                ),
                SizedBox(height: 20.0),
                Text(
                  '**5. Troubleshooting Tips**',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white, // Text color
                  ),
                ),
                Text(
                  'If you encounter any issues while using Smart Home, refer to the troubleshooting section in the app. It includes common problems and their solutions. You can also contact our support team for assistance.',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white, // Text color
                  ),
                ),
                SizedBox(height: 20.0),
                Text(
                  '**6. Feedback and Suggestions**',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white, // Text color
                  ),
                ),
                Text(
                  'We value your feedback and suggestions. If you have any ideas for improvement or encounter any issues, please feel free to contact our support team. Your input helps us make Smart Home better for everyone.',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white, // Text color
                  ),
                ),
                SizedBox(height: 20.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}