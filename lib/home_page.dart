import 'package:project/StudentProfileScreen.dart';
import 'package:project/notification_screen.dart';
import 'package:flutter/material.dart';
import 'chat_screen.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.blue[800],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Pathomphong Bunkue"),
              accountEmail: Text("Student - Mahasarakham University"),
              currentAccountPicture: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => StudentProfileScreen()),
                  );
                },
                child: CircleAvatar(
                  backgroundImage:
                      NetworkImage('https://example.com/profile.jpg'),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.blue[800],
              ),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text('Alert'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NotificationScreen()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.class_),
              title: Text('My Class'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Log Out'),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.blue[200]!,
              Colors.blue[50]!,
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search, color: Colors.blue),
                  hintText: 'Search by name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Subject Categories',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue[900]),
                ),
              ),
              SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    _buildCategoryIcon(Icons.book, 'Thai language', Colors.red),
                    _buildCategoryIcon(Icons.language, 'English', Colors.green),
                    _buildCategoryIcon(Icons.calculate, 'Math', Colors.blue),
                    _buildCategoryIcon(Icons.science, 'Physics', Colors.orange),
                    _buildCategoryIcon(
                        Icons.biotech, 'Chemistry', Colors.purple),
                    _buildCategoryIcon(Icons.eco, 'Biology', Colors.brown),
                    _buildCategoryIcon(Icons.space_bar, 'Science', Colors.cyan),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Recommended tutor',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue[900]),
                ),
              ),
              SizedBox(height: 10),
              Expanded(
                child: ListView(
                  children: [
                    _buildTutorCard('Pechnapa Thipsot', 'English, Physics',
                        'https://example.com/profile.jpg'),
                    _buildTutorCard('Pechnapa Thipsot', 'English, Physics',
                        'https://example.com/profile.jpg'),
                    _buildTutorCard('Pechnapa Thipsot', 'English, Physics',
                        'https://example.com/profile.jpg'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.blue), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.chat, color: Colors.green), label: 'Chat'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications, color: Colors.red),
              label: 'Notifications'),
        ],
        onTap: (index) {
          switch (index) {
            case 0:
              break;
            case 1:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ChatScreen()),
              );
              break;
            case 2:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NotificationScreen()),
              );
              break;
          }
        },
      ),
    );
  }

  Widget _buildCategoryIcon(IconData icon, String label, Color color) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: color.withOpacity(0.2),
            child: Icon(icon, size: 40, color: color),
            radius: 40,
          ),
          SizedBox(height: 5),
          Text(label, style: TextStyle(color: Colors.blue[900])),
        ],
      ),
    );
  }

  Widget _buildTutorCard(String name, String subjects, String imageUrl) {
    return Card(
      color: Colors.white.withOpacity(0.8),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(imageUrl),
        ),
        title: Text(name, style: TextStyle(color: Colors.blue[900])),
        subtitle: Text('Subjects: $subjects',
            style: TextStyle(color: Colors.blue[700])),
        trailing: Icon(Icons.star, color: Colors.yellow),
      ),
    );
  }
}

// class ProfileScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Profile'),
//         backgroundColor: Colors.blue[800], // AppBar background color
//       ),
//       body: Center(
//         child: Text('Profile Page', style: TextStyle(fontSize: 24)),
//       ),
//     );
//   }
// }
