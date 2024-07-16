import 'package:flutter/material.dart';

class StudentProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student Profile'),
        backgroundColor: Colors.blue[800],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage:
                    NetworkImage('https://example.com/student_profile.jpg'),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Name: Pathomphong Bunkue',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              'Education Level: High School',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              'Institution: Mahasarakham University Demonstration School',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              'Address: Kham Riang, Maha Sarakham',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
