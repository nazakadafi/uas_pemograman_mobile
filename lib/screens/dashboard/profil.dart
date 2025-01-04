import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFDF6EF),
      appBar: AppBar(
        backgroundColor: Color(0xFFFDF6EF),
        elevation: 0,
        title: Text(
          'Profil',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Profile Header
              Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/profile_picture.png'), // Replace with your image asset
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Naza_kadafi',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'I love u',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              // Profile Options
              buildProfileOptionSection(
                options: [
                  ProfileOption(
                    icon: Icons.person,
                    color: Colors.orange,
                    title: 'Informasi Pribadi',
                  ),
                  ProfileOption(
                    icon: Icons.location_on,
                    color: Colors.purple,
                    title: 'Alamat',
                  ),
                  ProfileOption(
                    icon: Icons.store,
                    color: Colors.blue,
                    title: 'Daftar Mitra Usaha',
                  ),
                  ProfileOption(
                    icon: Icons.favorite,
                    color: Colors.pink,
                    title: 'Menu Favorit',
                  ),
                  ProfileOption(
                    icon: Icons.notifications,
                    color: Colors.orange,
                    title: 'Pemberitahuan',
                  ),
                  ProfileOption(
                    icon: Icons.payment,
                    color: Colors.green,
                    title: 'Metode Pembayaran',
                  ),
                ],
              ),
              SizedBox(height: 20),
              buildProfileOptionSection(
                options: [
                  ProfileOption(
                    icon: Icons.question_answer,
                    color: Colors.orange,
                    title: 'FAQs',
                  ),
                  ProfileOption(
                    icon: Icons.rate_review,
                    color: Colors.cyan,
                    title: 'Ulasan Pengguna',
                  ),
                  ProfileOption(
                    icon: Icons.settings,
                    color: Colors.purple,
                    title: 'Pengaturan',
                  ),
                ],
              ),
              SizedBox(height: 20),
              buildProfileOptionSection(
                options: [
                  ProfileOption(
                    icon: Icons.exit_to_app,
                    color: Colors.red,
                    title: 'Keluar',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 8.0,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.orange,
          unselectedItemColor: Colors.grey,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.grid_view),
              label: 'Grid',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list),
              label: 'List',
            ),
            BottomNavigationBarItem(
              icon: SizedBox.shrink(), // Empty item for the FAB
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: 'Notifications',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.white,
        child: Icon(Icons.add, color: Colors.orange),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget buildProfileOptionSection({required List<ProfileOption> options}) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: options
            .map(
              (option) => ListTile(
                leading: CircleAvatar(
                  backgroundColor: option.color.withOpacity(0.1),
                  child: Icon(option.icon, color: option.color),
                ),
                title: Text(option.title),
                trailing: Icon(Icons.chevron_right),
              ),
            )
            .toList(),
      ),
    );
  }
}

class ProfileOption {
  final IconData icon;
  final Color color;
  final String title;

  ProfileOption({
    required this.icon,
    required this.color,
    required this.title,
  });
}
