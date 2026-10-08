import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Profile',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Profile',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [

            // Profile picture
            const SizedBox(height: 20),

            CircleAvatar(
              radius: 80,
              backgroundColor: Colors.white,
              child: ClipOval(
                child: Image.asset(
                  'assets/profile.png',
                  width: 150,
                  height: 150,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return const Icon(
                      Icons.person,
                      size: 100,
                      color: Colors.grey,
                    );
                  },
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Divider
            const Divider(
              color: Colors.black,
              thickness: 2,
            ),

            const SizedBox(height: 20),

            // Name
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Name',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 8),

            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Diluka',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),

            const SizedBox(height: 30),

            // Email
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Email',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 8),

            const Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.black,
                ),
                SizedBox(width: 12),
                Text(
                  'diluka.w@nsbm.ac.lk',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 30),

            // Points
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Points',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 8),

            const Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.black,
                ),
                SizedBox(width: 12),
                Text(
                  '0',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),

      // Floating + button
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Add button pressed');
        },
        backgroundColor: Colors.black,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}