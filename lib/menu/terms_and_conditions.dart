import 'package:flutter/material.dart';

class TermsAndConditionsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Terms & Conditions'),
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
                  'Smart Home Terms & Conditions',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 20.0),
                Text(
                  'Welcome to Smart Home! These terms and conditions ("Terms", "Agreement") govern your use of the Smart Home application and any related services ("Service"). By accessing or using the Service, you agree to be bound by these Terms. If you disagree with any part of the Terms, you may not access or use the Service.',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 20.0),
                Text(
                  '**1. Acceptance of Terms**',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'By accessing or using the Service, you agree to be bound by these Terms. If you disagree with any part of the Terms, you may not access or use the Service. This Agreement constitutes the entire agreement between you and Smart Home regarding the use of the Service and supersedes all prior or contemporaneous communications and proposals, whether oral or written, between you and Smart Home.',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 20.0),
                Text(
                  '**2. Changes to Terms**',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Smart Home reserves the right to update or change these Terms at any time. We will notify you of any changes by posting the updated Terms on the application. You are advised to check the Terms periodically for any changes. Your continued use of the Service after any changes to the Terms constitutes your acceptance of the revised Terms.',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 20.0),
                Text(
                  '**3. Use of the Service**',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'You agree to use the Service only for lawful purposes and in accordance with these Terms. You are responsible for all activity that occurs under your account. You are prohibited from using the Service for any illegal or unauthorized purpose, including but not limited to: \n\n- Violating any local, state, national, or international law or regulation.\n\n- Infringing upon the intellectual property rights of others.\n\n- Uploading or transmitting any content that is harmful, threatening, abusive, harassing, defamatory, obscene, or otherwise objectionable.\n\n- Interfering with or disrupting the Service or servers connected to the Service.\n\n- Attempting to gain unauthorized access to the Service, other accounts, computer systems, or networks connected to the Service.\n\n- Transmitting any viruses, malware, or other harmful code.\n\n- Collecting or storing personal information about others without their consent.',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 20.0),
                Text(
                  '**4. User Content**',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'You are solely responsible for any content that you upload, post, or otherwise transmit through the Service ("User Content"). You represent and warrant that you own all rights to the User Content or have obtained all necessary permissions, licenses, and consents to use and authorize Smart Home to use the User Content as described in these Terms.',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 20.0),
                Text(
                  '**5. Intellectual Property**',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'The Service and its original content, features, and functionality are and will remain the exclusive property of Smart Home and its licensors. The Service is protected by copyright, trademark, and other laws of both the United States and foreign countries. You agree not to reproduce, modify, distribute, sell, lease, sub-license, reverse engineer, decompile, disassemble, or otherwise exploit the Service or any portion thereof.',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 20.0),
                Text(
                  '**6. Termination**',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Smart Home may terminate your access to the Service immediately, with or without prior notice, for any reason, including but not limited to: \n\n- You violate these Terms.\n\n- You fail to pay any fees owed to Smart Home.\n\n- Smart Home suspects that you have engaged in fraudulent or illegal activities.\n\n- You are a threat to the security of the Service or other users.',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 20.0),
                Text(
                  '**7. Disclaimer**',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'The Service is provided "as is" and "as available" and without warranty of any kind, express or implied. Smart Home disclaims all warranties, express or implied, including but not limited to, implied warranties of merchantability, fitness for a particular purpose, title, and non-infringement. Smart Home does not warrant that the Service will be uninterrupted or error-free, that defects will be corrected, or that the Service is free of viruses or other harmful components. You assume all risk associated with using the Service.',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 20.0),
                Text(
                  '**8. Limitation of Liability**',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'To the maximum extent permitted by applicable law, Smart Home shall not be liable for any indirect, incidental, special, consequential, or punitive damages arising out of or in connection with your use of the Service. You agree that Smart Home\'s total liability to you for any and all claims arising out of or relating to the Service will not exceed the amount you paid to Smart Home for use of the Service.',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 20.0),
                Text(
                  '**9. Governing Law**',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'These Terms will be governed by and construed in accordance with the laws of the State of [your state], without regard to its conflict of law provisions.',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 20.0),
                Text(
                  '**10. Entire Agreement**',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'These Terms constitute the entire agreement between you and Smart Home regarding the use of the Service. This Agreement supersedes all prior or contemporaneous communications and proposals, whether oral or written, between you and Smart Home.',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 20.0),
                Text(
                  '**11. Contact Us**',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'If you have any questions about these Terms, please contact us at [your email address or support contact].',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
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