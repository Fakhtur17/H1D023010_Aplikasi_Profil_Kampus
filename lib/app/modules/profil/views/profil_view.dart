import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../widgets/app_drawer.dart';
import '../../../widgets/info_card.dart';
import '../controllers/profil_controller.dart';

class ProfilView extends GetView<ProfilController> {
  const ProfilView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profil Kampus')),
      drawer: const AppDrawer(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InfoCard(
              icon: Icons.account_balance,
              title: 'Tentang Kampus',
              description:
                  'Universitas Teknik Nusantara berfokus pada pengembangan teknologi dengan budaya riset dan inovasi.',
            ),
            InfoCard(
              icon: Icons.location_city,
              title: 'Lokasi',
              description: 'Jl. Pendidikan No. 123, Kota Ilmu, Indonesia.',
            ),
            InfoCard(
              icon: Icons.emoji_events,
              title: 'Prestasi',
              description:
                  'Pusat unggulan riset AI terapan, juara KRI nasional, dan akreditasi institusi Unggul.',
            ),
          ],
        ),
      ),
    );
  }
}
