import 'package:flutter/material.dart';

class SmartHomeManagementScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Setting'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Go back to the previous screen
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
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Manage system permissions',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20.0),
              Expanded(
                child: ListView.builder(
                  itemCount: 7,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.blue.shade800,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: ListTile(
                        leading: Icon(
                          getLeadingIcon(index),
                          color: Colors.white,
                          size: 30,
                        ),
                        title: Text(
                          getTitle(index),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                        trailing: Switch(
                          value: false,
                          activeColor: Colors.amber,
                          onChanged: (value) {
                            // Handle switch toggle
                          },
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 20.0),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                      context,
                      '/welcome',
                          (route) => false, // Remove all previous routes
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue.shade800,
                    padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
                    textStyle: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Text('Out'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper functions for icon and title
  IconData getLeadingIcon(int index) {
    switch (index) {
      case 0:
        return Icons.camera_alt;
      case 1:
        return Icons.location_on;
      case 2:
        return Icons.mic;
      case 3:
        return Icons.storage;
      case 4:
        return Icons.account_circle;
      case 5:
        return Icons.open_in_new;
      case 6:
        return Icons.bluetooth;
      default:
        return Icons.error;
    }
  }

  String getTitle(int index) {
    switch (index) {
      case 0:
        return 'Access to the camera';
      case 1:
        return 'Access to the location';
      case 2:
        return 'Access to audio recording';
      case 3:
        return 'Access the phone\'s storage memory';
      case 4:
        return 'Access to phone account';
      case 5:
        return 'Access to popup windows';
      case 6:
        return 'Access to Bluetooth';
      default:
        return 'Error';
    }
  }
}