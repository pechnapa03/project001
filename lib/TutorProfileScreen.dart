import 'package:flutter/material.dart';

class TutorProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tutor Profile'),
        backgroundColor: Colors.blue[800],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage:
                      NetworkImage('https://example.com/tutor_profile.jpg'),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Name: Pechnapa Thipsot',
                style: TextStyle(fontSize: 18),
              ),
              Text(
                'Subject: Graphic Designer',
                style: TextStyle(fontSize: 18),
              ),
              Text(
                'Address: Kham Riang, Maha Sarakham',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                child: Text('Tutoring'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue[800],
                ),
              ),
              SizedBox(height: 20),
              Card(
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'GRAPHIC DESIGNER',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Divider(),
                      Text(
                        'Education',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                          '• High School: ABC High School\n• Bachelor: XYZ University\n• Master: DEF University'),
                      SizedBox(height: 10),
                      Text(
                        'Experience',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                          '• 5 years as a Graphic Designer at Company A\n• 2 years as a Senior Designer at Company B\n• Freelance Graphic Designer for 3 years'),
                      SizedBox(height: 10),
                      Text(
                        'Language',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text('• English\n• Japanese'),
                      SizedBox(height: 10),
                      Text(
                        'Skill',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                          '• Web Design\n• UI Design\n• Photoshop\n• Illustrator\n• Graphic Design\n• Print Design'),
                    ],
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
