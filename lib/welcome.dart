import 'package:flutter/material.dart';
import 'package:jobie_jobpotal/login.dart';





class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFBF6FF), // Light gray background
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            Image.asset(
              'assets/logoo.png', 
              height: 100,
            ),
            const SizedBox(height: 20),
            const Text(
              'Jobie',
              style: TextStyle(
                fontSize: 38,
                fontWeight: FontWeight.bold,
                color: Color(0xff343434),fontFamily: 'Racing Sans One', 
                
              ),
            ),
            const SizedBox(height: 4),
              const Text(
              'Job Portal iOS App',
              style: TextStyle(
                fontSize: 14,fontWeight: FontWeight.w400,
                color: Color(0xff000000),fontFamily: 'Poppins',
              ),
            ),
             const SizedBox(height: 80),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Continue as',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,fontFamily: 'Poppins'
                ),
              ),
            ),
            const SizedBox(height: 8),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur\nadipiscing elit, sed do eiusmod tempor',
                style: TextStyle(
                  fontSize: 14,fontWeight: FontWeight.w400,
                  color: Color(0xff000000),fontFamily: 'Poppins'
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 40),
            _buildOptionCard(
              iconPath: 'assets/first.png', // Replace with job seeker image
              title: 'JOB SEEKERS',
              description: 'Finding a job here never been easier than before',
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const LoginApp()));
               
              },
            ),
            const SizedBox(height: 16),
            _buildOptionCard(
              iconPath: 'assets/second.png', 
              title: 'COMPANY',
              description: 'Let’s recruit your great candidate faster here',
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const LoginApp()));
                
              },
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }

  Widget _buildOptionCard({
    required String iconPath,
    required String title,
    required String description,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          children: [
            Image.asset(
              iconPath,
              height: 48,
              width: 48,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff40189D),fontFamily: 'Poppins'
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    description,
                    style: const TextStyle(
                      fontSize: 14,fontWeight: FontWeight.w400,
                      color: Color(0xff000000),fontFamily: 'Poppins'
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
