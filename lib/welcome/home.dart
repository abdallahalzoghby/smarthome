import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Smart Home'),
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
              Colors.blue.shade900, // Top color
              Colors.blue.shade700, // Bottom color
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Control your smart devices',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white, // Text color
                ),
              ),
              SizedBox(height: 30.0),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), // Add rounded corners
                  color: Colors.blue.shade800, // Background color for the button
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2), // Add shadow
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/add_device');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent, // Make background transparent
                    padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
                    textStyle: TextStyle(fontSize: 18.0, color: Colors.white), // Text color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20), // Match button's border radius
                    ),
                  ),
                  child: Text(
                    'Add Device',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold, // Add bold font weight for the text
                      color: Colors.white, // Make text color white for contrast
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