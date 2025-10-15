import 'package:flutter/material.dart';
import 'package:lunchify/profileSetup.dart';
import 'package:lunchify/signIn.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(padding: EdgeInsets.all(24)),
            Text(
              'Lunchify',
              style: TextStyle(
                fontFamily: 'Inter',
                color: Color(0xFF3AA85B),
                fontWeight: FontWeight.w600,
                fontSize: 25,
              ),
            ),
            Padding(padding: EdgeInsets.all(24)),
            Padding(
              padding: const EdgeInsets.fromLTRB(18, 0, 18, 0),
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 0.5),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 10,
                  children: [
                    Padding(padding: EdgeInsets.only(top: 20)),
                    Text(
                      'Welcome to Lunchify',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 24,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(16)),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(32, 0, 32, 0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        spacing: 10,
                        children: [
                          Text('Email'),
                          TextField(
                            decoration: InputDecoration(
                              labelText: 'john.doe@example.com',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),

                              labelStyle: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 16,
                                fontWeight: FontWeight.w100,
                                color: const Color.fromARGB(255, 99, 96, 96),
                              ),
                            ),
                          ),
                          Text('Password'),
                          TextField(
                            decoration: InputDecoration(
                              labelText: '******',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),

                              labelStyle: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 16,
                                fontWeight: FontWeight.w100,
                                color: const Color.fromARGB(255, 99, 96, 96),
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const ProfileSetup(),
                                  ),
                                );
                              },
                              child: Text(
                                'Sign Up',
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    Padding(padding: EdgeInsets.only(top: 20)),
                    Text(
                      'Forgot Password?',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: Color(0xff3AA85B),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 20)),
                    Text("Don't have an account? Sign Up"),
                    Padding(padding: EdgeInsets.all(24)),
                  ],
                ),
              ),
            ),
            Padding(padding: EdgeInsets.all(24)),
          ],
        ),
      ),
    );
  }
}
