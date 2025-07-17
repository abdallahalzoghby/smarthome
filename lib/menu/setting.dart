import 'package:flutter/material.dart';
import 'package:final_project_2/setting/region.dart';
import 'package:final_project_2/setting/language.dart';
import 'package:final_project_2/setting/smart_home_management.dart';

class SettingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Setting'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
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
          child: ListView.builder(
            itemCount: 6, // Number of list tiles
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(bottom: 10), // Add margin between tiles
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), // Rounded corners
                  color: Colors.blue.shade800, // Background color
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
                    getLeadingIcon(index), // Use a helper function for icons
                    color: Colors.white,
                    size: 30,
                  ),
                  title: Text(
                    getTitle(index), // Use a helper function for titles
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  trailing: getTrailingWidget(index), // Use a helper function for trailing
                  onTap: () {
                    handleTap(index, context);
                  },
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  // Helper functions for icons, titles, and trailing widgets
  IconData getLeadingIcon(int index) {
    switch (index) {
      case 0:
        return Icons.location_on;
      case 1:
        return Icons.language;
      case 2:
        return Icons.home;
      case 3:
        return Icons.volume_up;
      case 4:
        return Icons.scanner;
      default:
        return Icons.error; // Default icon
    }
  }

  String getTitle(int index) {
    switch (index) {
      case 0:
        return 'Region';
      case 1:
        return 'The language';
      case 2:
        return 'Smart home management';
      case 3:
        return 'Shortcut touch tones';
      case 4:
        return 'Scanning of devices';
      default:
        return 'Error'; // Default title
    }
  }

  Widget getTrailingWidget(int index) {
    if (index == 3) {
      return Switch(
        value: false,
        activeColor: Colors.amber,
        onChanged: (value) {
          // Handle switch toggle
        },
      );
    } else {
      return Icon(
        Icons.arrow_forward_ios,
        color: Colors.white,
        size: 24,
      );
    }
  }

  void handleTap(int index, BuildContext context) {
    switch (index) {
      case 0:
        Navigator.pushNamed(context, '/region');
        break;
      case 1:
        Navigator.pushNamed(context, '/language');
        break;
      case 2:
        Navigator.pushNamed(context, '/smart_home_management');
        break;
      case 4:
        Navigator.pushNamed(context, '/add_device');
        break;
      default:
      // Handle other taps if needed
    }
  }
}