import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../widgets/app_drawer.dart';
import '../../../widgets/info_card.dart';
import '../controllers/program_studi_controller.dart';

class ProgramStudiView extends GetView<ProgramStudiController> {
  const ProgramStudiView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Program Studi')),
      drawer: const AppDrawer(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InfoCard(
              icon: Icons.computer,
              title: 'Informatika (S1)',
              description:
                  'Rekayasa perangkat lunak, AI, big data, keamanan siber.',
            ),
            InfoCard(
              icon: Icons.electrical_services,
              title: 'Teknik Elektro (S1)',
              description: 'Otomasi, kontrol, dan energi terbarukan.',
            ),
            InfoCard(
              icon: Icons.location_searching,
              title: 'Teknik Geodesi (S1)',
              description: 'Pemetaan, penginderaan jauh, dan SIG.',
            ),
          ],
        ),
      ),
    );
  }
}
