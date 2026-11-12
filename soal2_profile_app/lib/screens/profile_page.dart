import 'package:flutter/material.dart';
import '../models/profile.dart';
import '../widgets/info_tile.dart';
import 'edit_profile_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  late Profile userProfile;

  @override
  void initState() {
    super.initState();
    userProfile = Profile(
      name: 'Muhamad Anggara',
      nim: '1124160219',
      prodi: 'Teknik Informatika',
      kelas: 'TI24PSE1',
      bio: 'Mahasiswa Teknik Informatika yang antusias dalam pengembangan aplikasi mobile Flutter',
      email: 'anggaratzy001@gmail.com',
      phone: '085814974817',
      github: 'MuhamadAnggara',
      imagePath: 'assets/images/profile.png',
    );
  }

  void _navigateToEditProfile() async {
    final updatedProfile = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => EditProfilePage(profile: userProfile),
      ),
    );

    if (!mounted) return;

    if (updatedProfile != null && updatedProfile is Profile) {
      setState(() {
        userProfile = updatedProfile;
      });

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Profil berhasil diperbarui!'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Mahasiswa'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.edit),
            tooltip: 'Edit Profil',
            onPressed: _navigateToEditProfile,
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 10),
              const Center(
                child: CircleAvatar(
                  radius: 55,
                  child: Icon(Icons.person, size: 60),
                ),
              ),
              const SizedBox(height: 16),
              Text(
                userProfile.name,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(height: 6),
              Text(
                '${userProfile.nim} • ${userProfile.prodi}',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(height: 4),
              Text(
                'Kelas: ${userProfile.kelas}',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const SizedBox(height: 16),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Bio Singkat',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        userProfile.bio,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    InfoTile(
                      icon: Icons.email,
                      label: 'Email',
                      value: userProfile.email,
                    ),
                    const Divider(height: 1),
                    InfoTile(
                      icon: Icons.phone,
                      label: 'Nomor HP',
                      value: userProfile.phone,
                    ),
                    const Divider(height: 1),
                    InfoTile(
                      icon: Icons.code,
                      label: 'Akun GitHub',
                      value: userProfile.github,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: _navigateToEditProfile,
                  icon: const Icon(Icons.edit),
                  label: const Text('EDIT PROFIL'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}