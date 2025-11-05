import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../widgets/app_drawer.dart';
import '../../../widgets/info_card.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home - Profil Kampus')),
      drawer: const AppDrawer(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 8),
            Image.asset('assets/logo_kampus.png', height: 120),
            const SizedBox(height: 12),
            Text(
              'Universitas Teknik Nusantara',
              style: Theme.of(
                context,
              ).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 4),
            Text(
              'Aplikasi Profil Kampus Sederhana (Flutter + GetX)',
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            const InfoCard(
              icon: Icons.info_outline,
              title: 'Selamat Datang!',
              description:
                  'Gunakan menu Drawer untuk menjelajah halaman Profil, Visi & Misi, Program Studi, dan Kontak Kami.',
            ),
          ],
        ),
      ),
    );
  }
}
