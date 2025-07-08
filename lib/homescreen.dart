import 'package:flutter/material.dart';
import 'package:helloworld/themecolor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Hello World",
          style: GoogleFonts.ubuntu(
            color: ThemeColor.black,
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: ClipOval(
                    child: Image(
                      image: AssetImage('assets/images/sivanandh.jpg'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),

                Text(
                  "Sivanandh P P",
                  style: GoogleFonts.ubuntu(
                    color: ThemeColor.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Mail ID: sivanandhpp@gmail.com",
                  style: GoogleFonts.ubuntu(
                    color: ThemeColor.black,
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Phone No: +91 90727 08620",
                  style: GoogleFonts.ubuntu(
                    color: ThemeColor.black,
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "MCA at Jain University",
                  style: GoogleFonts.ubuntu(
                    color: ThemeColor.black,
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                SizedBox(height: 20),
                // Social Media Row
                Container(
                  height: 65,
                  margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                     
                      color: ThemeColor.lightGrey,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: Image.asset('assets/images/linkedin.png',width: 40,height: 40),
                        iconSize: 40,
                        onPressed: () {
                          // LinkedIn profile
                          launchUrl(Uri.parse('https://www.linkedin.com/in/sivanandh/'));
                        },
                      ),
                      SizedBox(width: 20),
                      IconButton(
                        icon: Image.asset('assets/images/github.png',width: 40,height: 40,),
                        iconSize: 40,
                        onPressed: () {
                          // GitHub profile
                          launchUrl(Uri.parse('https://github.com/sivanandhpp'));
                        },
                      ),
                      SizedBox(width: 20),
                      IconButton(
                        icon: Image.asset('assets/images/leetcode.png',width: 40,height: 40),
                        iconSize: 40,
                        onPressed: () {
                          // LeetCode profile
                          launchUrl(Uri.parse('https://leetcode.com/sivanandh/'));
                        },
                      ),
                      SizedBox(width: 20),
                      IconButton(
                        icon: Image.asset('assets/images/website.png',width: 40,height: 40),
                        iconSize: 40,
                        onPressed: () {
                          // Personal website
                          launchUrl(Uri.parse('https://sivanandhpp.github.io/'));
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 80),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
