import 'package:flutter/material.dart';
import 'package:jobie_jobpotal/register.dart';

void main() {
  runApp(const LoginApp());
}

class LoginApp extends StatelessWidget {
  const LoginApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            
          },
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Company',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w600,fontFamily: 'Poppins',
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Sign In',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,fontFamily: 'Poppins'
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Please sign in to your registered \naccount',
              style: TextStyle(
                color: Color(0xff585858),
                fontSize: 16,fontWeight: FontWeight.w400,fontFamily: 'Poppins'
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: 'hanrykanwii',
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(80.0),
                  borderSide: BorderSide.none,
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
            const SizedBox(height: 20),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                suffixIcon: const Icon(Icons.visibility),
                border: OutlineInputBorder(
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
            const SizedBox(height: 10),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  
                },
                child: const Row(
                  children: [
                    Text(
                      'Forgot your password?',
                      style: TextStyle(
                        color: Color.fromARGB(255, 164, 152, 152),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text('Reset Here',style: TextStyle(decoration: TextDecoration.underline),)
                  ],
                  
                ),
              ),
            ),
            
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              height: 60,
              child: ElevatedButton(
                onPressed: () {
                  
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff40189D), // Background color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                    
                  ),
                  
                ),
                child: const Text(
                  'LOGIN',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,color: Color(0xffffffff),fontFamily: 'poppins'
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Center(
              child: Text(
                'Or sign in with',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Spacer(),
          ],
        ),
        
      ),
       bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>const RegisterScreen()));
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0XFFE1D3FF), 
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50.0),
            ),
            padding: const EdgeInsets.symmetric(vertical: 20.0)
          ),
          
          child: const Text(
            'CREATE ACCOUNT',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Color(0xFF40189D),fontFamily: 'Poppins'
            ),
          ),
          
        ),
      ),
    );
  }
}
      
    
  

