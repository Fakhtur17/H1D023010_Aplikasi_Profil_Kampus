import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../widgets/app_drawer.dart';
import '../../../widgets/info_card.dart';
import '../controllers/visi_misi_controller.dart';

class VisiMisiView extends GetView<VisiMisiController> {
  const VisiMisiView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Visi & Misi')),
      drawer: const AppDrawer(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InfoCard(
              icon: Icons.remove_red_eye,
              title: 'Visi',
              description:
                  'Menjadi universitas teknologi berkelas dunia yang berdampak bagi masyarakat.',
            ),
            InfoCard(
              icon: Icons.flag_outlined,
              title: 'Misi',
              description:
                  '1) Pendidikan berkualitas; 2) Riset inovatif; 3) Kolaborasi industri; 4) Pemberdayaan masyarakat.',
            ),
          ],
        ),
      ),
    );
  }
}
