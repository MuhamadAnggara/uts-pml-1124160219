import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> skillsAndHobbies = [
      {
        'title': 'Flutter & Mobile Development',
        'subtitle': 'Membangun aplikasi mobile Android yang responsif',
        'icon': Icons.phone_android,
      },
      {
        'title': 'UI/UX Design',
        'subtitle': 'Perancangan antarmuka pengguna yang bersih dan modern',
        'icon': Icons.palette,
      },
      {
        'title': 'Git & Version Control',
        'subtitle': 'Manajemen kode dan kolaborasi proyek di GitHub',
        'icon': Icons.code,
      },
      {
        'title': 'Gaming & Problem Solving',
        'subtitle': 'Mengasah logika dan strategi berpikir kritis',
        'icon': Icons.sports_esports,
      },
    ];

    final List<Map<String, String>> educationHistory = [
      {
        'school': 'Universitas (Global Institute)',
        'major': 'S1 Teknik Informatika (2024 - Sekarang)',
        'year': 'Aktif',
      },
      {
        'school': 'SMK',
        'major': 'Jurusan Teknik komputer dan jaringan',
        'year': '2021 - 2024',
      },
      {
        'school': 'Sekolah Menengah Pertama (SMP)',
        'major': 'Pendidikan Menengah',
        'year': '2018 - 2021',
      },
      {
        'school': 'Sekolah Dasar (SD)',
        'major': 'Pendidikan Dasar',
        'year': '2012 - 2018',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Tentang Saya'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(16.0),
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                children: const [
                  Icon(Icons.star, color: Colors.blue),
                  SizedBox(width: 8),
                  Text(
                    'Keahlian & Hobi',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            for (final item in skillsAndHobbies)
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                margin: const EdgeInsets.only(bottom: 8.0),
                child: ListTile(
                  leading: CircleAvatar(
                    child: Icon(item['icon'] as IconData),
                  ),
                  title: Text(
                    item['title'] as String,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(item['subtitle'] as String),
                ),
              ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                children: const [
                  Icon(Icons.school, color: Colors.blue),
                  SizedBox(width: 8),
                  Text(
                    'Riwayat Pendidikan',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            for (final item in educationHistory)
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                margin: const EdgeInsets.only(bottom: 8.0),
                child: ListTile(
                  leading: const CircleAvatar(
                    child: Icon(Icons.history_edu),
                  ),
                  title: Text(
                    item['school']!,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(item['major']!),
                  trailing: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blue.shade50,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      item['year']!,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue.shade700,
                      ),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}