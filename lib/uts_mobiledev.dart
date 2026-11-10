import 'package:flutter/material.dart';

//tahap1
void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  final String userName = 'Muhammad Umam Kherurozikin';
  final String role = 'Senior AI Engineering';

  final List<String> experiences = ['Senior AI Engineer - Tesla USA'];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // A. SCAFFOLD DAN APPBAR
      appBar: AppBar(
        title: const Text('Profil Mahasiswa'),
        centerTitle: true,

        actions: [
          IconButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Halaman Profil Mahasiswa')),
              );
            },
            icon: const Icon(Icons.info),
          ),
        ],
      ),

      // B. BODY
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),

            child: SizedBox(
              width: double.infinity,

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // C. FOTO / ICON PROFIL
                  const CircleAvatar(
                    radius: 50,
                    child: Icon(Icons.person, size: 55),
                  ),

                  // JARAK
                  const SizedBox(height: 16),

                  // NAMA LENGKAP
                  Text(
                    'Muhammad Umam Khaerurojikin',
                    style: Theme.of(context).textTheme.headlineSmall,
                    textAlign: TextAlign.center,
                  ),

                  const SizedBox(height: 8),

                  // NIM
                  Text(
                    'NIM: 1124160068',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),

                  const SizedBox(height: 8),

                  // PROGRAM STUDI
                  Text(
                    'Program Studi: Software Engineering',
                    style: Theme.of(context).textTheme.bodyMedium,
                    textAlign: TextAlign.center,
                  ),

                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
