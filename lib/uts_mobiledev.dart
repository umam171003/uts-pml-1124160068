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
                // CARD INFORMASI KONTAK
                  Card(
                    color: const Color.fromARGB(255, 151, 111, 211),
                    child: Padding(
                      padding: const EdgeInsets.all(12),

                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          const Text(
                            'Informasi Kontak',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          const InfoTile(
                            icon: Icons.email,
                            label: 'Email',
                            value: 'umam@gmail.com',
                          ),

                          const InfoTile(
                            icon: Icons.phone,
                            label: 'Nomor HP',
                            value: '081234567890',
                          ),

                          const InfoTile(
                            icon: Icons.school,
                            label: 'Kelas',
                            value: 'TI SE24',
                          ),

                          const InfoTile(
                            icon: Icons.code,
                            label: 'GitHub',
                            value: 'https://github.com/umam171003',
                          ),

                        ],
                      ),
                    ),
                  ),


                ],
              ),
            ),
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text(
                'Terima kasih telah melihat profil saya',
              ),
            ),
          );
        },
        child: const Icon(Icons.message),
      ),

    );
  }
}
    
    

//tahap 3

class InfoTile extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const InfoTile({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(label),
      subtitle: Text(value),
    );
  }
  
}

