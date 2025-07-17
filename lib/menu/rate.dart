import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class RateScreen extends StatefulWidget {
  @override
  _RateScreenState createState() => _RateScreenState();
}

class _RateScreenState extends State<RateScreen> {
  int _rating = 0; // Initial rating is 0 (no stars selected)
  final _email = 'abdallahsoliman891@gmail.com';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rate'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.blue.shade800, // Darker blue for the app bar
        centerTitle: true,
        elevation: 0,
        titleTextStyle: TextStyle(
          color: Colors.white, // Title text color
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
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'RATE ZAISH',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 20.0),
                Text(
                  'You can rate this application if you like it. Thank you for your support!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 30.0),
                // Rating Stars
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    5,
                        (index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            _rating = index + 1; // Update rating on tap
                          });
                        },
                        child: Icon(
                          _rating >= index + 1 ? Icons.star : Icons.star_border,
                          color: Colors.amber,
                          size: 30,
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 30.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: () {
                        // Handle Like button press (you can add logic here)
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue.shade300, // Lighter blue for the Like button
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
                      child: Text('Like'),
                    ),
                    SizedBox(width: 20.0),
                    ElevatedButton(
                      onPressed: () {
                        _launchEmail(_email);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue.shade300, // Lighter blue for the Dislike button
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
                      child: Text('Dislike'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Launch email function
  Future<void> _launchEmail(String email) async {
    final Uri mailUri = Uri(
      scheme: 'mailto',
      path: email,
      query: 'subject=Feedback for ZAISH App',
    );
    if (await launchUrl(mailUri)) {
      // Email launch successful
    } else {
      // Email launch failed
    }
  }
}