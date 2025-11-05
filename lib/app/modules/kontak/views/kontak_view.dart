import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../widgets/app_drawer.dart';
import '../../../widgets/info_card.dart';
import '../controllers/kontak_controller.dart';

class KontakView extends GetView<KontakController> {
  const KontakView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Kontak Kami')),
      drawer: const AppDrawer(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InfoCard(
              icon: Icons.place,
              title: 'Alamat',
              description: 'Jl. Pendidikan No. 123, Kota Ilmu, Indonesia 54321',
            ),
            InfoCard(
              icon: Icons.phone,
              title: 'Telepon',
              description: '(0281) 123456 — Senin–Jumat 08:00–16:00 WIB',
            ),
            InfoCard(
              icon: Icons.email,
              title: 'Email',
              description: 'humas@kampus.ac.id',
            ),
          ],
        ),
      ),
    );
  }
}
