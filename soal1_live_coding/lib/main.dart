import 'package:flutter/material.dart';
void main() {
    runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Apk mahasiswa',
        darkTheme: ThemeData(
            brightness: Brightness.dark,
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.black,
            brightness: Brightness.dark),
        ),
        themeMode: ThemeMode.dark,
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
        title: const Text('Profile Muhamad Anggara'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('Halaman Profile'),
      ),
    );
  }
}