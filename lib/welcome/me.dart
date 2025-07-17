import 'package:flutter/material.dart';

class CallMeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ZAISH'),
        backgroundColor: Colors.blue,
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
        child: ListView.separated(
          padding: EdgeInsets.zero,
          itemCount: 11,
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
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
                ),
                title: Text(
                  getTitle(index),
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onTap: () {
                  handleTap(index, context);
                },
              ),
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(height: 10); // Add space between buttons
          },
        ),
      ),
    );
  }


  IconData getLeadingIcon(int index) {
    switch (index) {
      case 0:
        return Icons.home;
      case 1:
      case 2:
        return Icons.login;
      case 3:
        return Icons.bluetooth;
      case 4:
        return Icons.mic;
      case 5:
        return Icons.settings;
      case 6:
        return Icons.privacy_tip;
      case 7:
        return Icons.description;
      case 8:
        return Icons.star;
      case 9:
        return Icons.help;
      default:
        return Icons.error; // Default icon
    }
  }

  String getTitle(int index) {
    switch (index) {
      case 0:
        return 'Home';
      case 1:
        return 'Log in';
      case 2:
        return 'Sign in';
      case 3:
        return 'Bluetooth';
      case 4:
        return 'Voice assistance';
      case 5:
        return 'Setting';
      case 6:
        return 'Privacy Policy';
      case 7:
        return 'Terms & Conditions';
      case 8:
        return 'Rate';
      case 9:
        return 'Help and notes';
      default:
        return 'Error'; // Default title
    }
  }

  void handleTap(int index, BuildContext context) {
    switch (index) {
      case 0:
        Navigator.pushNamed(context, '/home');
        break;
      case 1:
        Navigator.pushNamed(context, '/login');
        break;
      case 2:
        Navigator.pushNamed(context, '/signin');
        break;
      case 3:
      case 4:
        Navigator.pushNamed(context, '/add_device');
        break;
      case 5:
        Navigator.pushNamed(context, '/setting');
        break;
      case 6:
        Navigator.pushNamed(context, '/privacy_policy');
        break;
      case 7:
        Navigator.pushNamed(context, '/terms_and_conditions');
        break;
      case 8:
        Navigator.pushNamed(context, '/rate');
        break;
      case 9:
        Navigator.pushNamed(context, '/help_and_notes');
        break;
      default:
      // Handle error
    }
  }
}