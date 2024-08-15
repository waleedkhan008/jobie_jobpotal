import 'package:flutter/material.dart';
import 'package:jobie_jobpotal/jobdetail.dart';



class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            // Handle back action
          },
        ),
        title: const Text(
          'Company',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      backgroundColor: const Color(0xfffbf6ff),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Create an Account',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 10),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Please fill registration form below',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[600],
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 30),
            TextField(
              decoration: InputDecoration(
                labelText: 'Henry Kanwil',
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50.0),
                  borderSide: BorderSide.none
                  
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50.0),
                  borderSide: const BorderSide(
                    color: Color(0xff40189d), 
                    width: 2.0,
                  )),
                  filled: true,
                fillColor: const Color(0xffffffff),
              ),
            ),
            const SizedBox(height: 15),
            TextField(
              decoration: InputDecoration(
                labelText: 'henrykanwil@gmail.com',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50.0),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: const BorderSide(
                    color: Color(0xff40189d), 
                    width: 2.0,
                  )),
                  filled: true,
                fillColor: const Color(0xffffffff),
              ),
            ),
            const SizedBox(height: 15),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50.0),
                  borderSide: BorderSide.none,
                ),
                suffixIcon: const Icon(Icons.visibility),
                 focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: const BorderSide(
                    color: Color(0xff40189d), // Outline color when focused
                    width: 2.0,
                  )),
                  filled: true,
                fillColor: const Color(0xffffffff),
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const JobDetailScreen()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF5C47C2), 
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                padding: const EdgeInsets.symmetric(vertical: 15.0),
              ),
              child: const Text('SIGN UP',style: TextStyle(color: Color(0xffffffff),fontSize: 16,
              fontWeight: FontWeight.w600),),
            ),
            const SizedBox(height: 15),
            Align(
              alignment: Alignment.centerLeft,
              child: Text.rich(
                TextSpan(
                  text: 'By tapping "Sign Up" you accept our ',
                  style: TextStyle(color: Colors.grey[600], fontSize: 14,fontWeight: FontWeight.w400),
                  children: const <TextSpan>[
                    TextSpan(
                      text: 'terms',
                      style: TextStyle(
                        color: Color(0xff40189D),fontSize: 14,fontWeight: FontWeight.w600
                        
                      ),
                    ),
                    TextSpan(text: ' \nand '),
                    TextSpan(
                      text: 'condition',
                      style: TextStyle(
                        color: Color(0xff40189d),fontWeight: FontWeight.w600,fontSize: 14
                        
                      ),
                    ),
                  ],
                ),
                
              ),
            ),
            
            const SizedBox(height: 30),
            const Align(
              alignment: Alignment.center,
              child: Text
              ('Already have an account?',style: TextStyle(color: Color(0xff000000),fontSize: 14,fontWeight: FontWeight.w400),),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xffe1d3ff), // Light purple color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
                padding: const EdgeInsets.symmetric(vertical: 15.0),
              ),
              child: const Text(
                'LOGIN',
                style: TextStyle(color: Color(0xff40189d)),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
