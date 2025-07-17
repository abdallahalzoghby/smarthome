import 'package:flutter/material.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Privacy Policy'),
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
                  'Smart Home Privacy Policy',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white, // Text color
                  ),
                ),
                SizedBox(height: 20.0),
                Text(
                  'At Smart Home, we are committed to protecting your privacy. This Privacy Policy describes how we collect, use, disclose, and protect your personal information when you use our application and services. We value your trust and are dedicated to safeguarding your information.',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white, // Text color
                  ),
                ),
                SizedBox(height: 20.0),
                Text(
                  '**1. Information We Collect**',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white, // Text color
                  ),
                ),
                Text(
                  'We collect information that you provide to us directly, such as your name, email address, and device information. We may also collect information about your device and how you use our app, including your IP address, device ID, operating system, and usage data.',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white, // Text color
                  ),
                ),
                SizedBox(height: 20.0),
                Text(
                  '**2. How We Use Your Information**',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white, // Text color
                  ),
                ),
                Text(
                  'We use the information we collect to provide and improve our services, personalize your experience, communicate with you, and for other purposes described in this Privacy Policy. We may use your information to: \n\n- Provide and operate our services, including managing your account and connecting your devices.\n\n- Personalize your experience and provide you with relevant content.\n\n- Communicate with you about our services, including sending you updates and promotional information.\n\n- Analyze and improve our services, including identifying trends and usage patterns.\n\n- Protect our services, including detecting and preventing fraud.',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white, // Text color
                  ),
                ),
                SizedBox(height: 20.0),
                Text(
                  '**3. Sharing Your Information**',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white, // Text color
                  ),
                ),
                Text(
                  'We may share your information with third-party service providers who help us provide and improve our services. We may also share your information if required by law, to protect our rights, or to comply with legal obligations.',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white, // Text color
                  ),
                ),
                SizedBox(height: 20.0),
                Text(
                  '**4. Data Security**',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white, // Text color
                  ),
                ),
                Text(
                  'We use appropriate technical and organizational measures to protect your information from unauthorized access, use, disclosure, alteration, or destruction. However, no website or internet transmission is completely secure, and we cannot guarantee the absolute security of your information.',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white, // Text color
                  ),
                ),
                SizedBox(height: 20.0),
                Text(
                  '**5. Your Choices**',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white, // Text color
                  ),
                ),
                Text(
                  'You have the right to access, modify, or delete your personal information. You can also choose to opt-out of receiving promotional communications from us. To exercise these rights, please contact our support team.',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white, // Text color
                  ),
                ),
                SizedBox(height: 20.0),
                Text(
                  '**6. Children\'s Privacy**',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white, // Text color
                  ),
                ),
                Text(
                  'Our services are not intended for children under the age of 13. We do not knowingly collect personal information from children under 13. If you are a parent or guardian and you believe that your child has provided us with personal information, please contact us.',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white, // Text color
                  ),
                ),
                SizedBox(height: 20.0),
                Text(
                  '**7. Changes to This Policy**',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white, // Text color
                  ),
                ),
                Text(
                  'We may update our Privacy Policy from time to time. We will notify you of any changes by posting the new Privacy Policy on our website. We encourage you to review this Privacy Policy periodically for any updates.',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white, // Text color
                  ),
                ),
                SizedBox(height: 20.0),
                Text(
                  '**8. Contact Us**',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white, // Text color
                  ),
                ),
                Text(
                  'If you have any questions about this Privacy Policy, please contact us at [your email address or support contact].',
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