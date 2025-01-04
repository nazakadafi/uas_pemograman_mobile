import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../providers/auth_provider.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends ConsumerState<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            // Menampilkan gambar sebagai latar belakang
            Positioned.fill(
              child: Image.asset(
                'assets/images/nasi_box.jpg', // Pastikan jalur ini benar
                fit: BoxFit.cover, // Mengatur gambar agar mengisi layar
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          SizedBox(width: 10),
                          Icon(Icons.signal_cellular_alt),
                          Icon(Icons.wifi),
                          Icon(Icons.battery_full),
                        ],
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Aplikasi ini akan membantu Anda menemukan layanan cetring terbaik untuk berbagai acara hanya dalam satu aplikasi!',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16),
                      ),
                      const SizedBox(height: 20),
                      // Removed the misplaced comma
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          // Add any child widgets here if needed
                        ],
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Tambahkan logika navigasi di sini
                        context.go('/next'); // Ganti '/next' dengan rute yang sesuai
                      },
                      child: const Text('next'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                        textStyle: const TextStyle(fontSize: 16),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        // Tambahkan logika lewati di sini
                        context.go('/login'); // Ganti '/login' dengan rute yang sesuai
                      },
                      child: const Text('lewati'),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}