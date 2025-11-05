import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../routes/app_pages.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              margin: EdgeInsets.zero,
              padding: EdgeInsets.all(16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(radius: 26, child: Icon(Icons.school, size: 28)),
                  SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      'Profil Kampus',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            _item(icon: Icons.home, label: 'Home', route: Routes.home),
            _item(
              icon: Icons.account_balance,
              label: 'Profil Kampus',
              route: Routes.profil,
            ),
            _item(
              icon: Icons.flag,
              label: 'Visi & Misi',
              route: Routes.visiMisi,
            ),
            _item(
              icon: Icons.menu_book,
              label: 'Program Studi',
              route: Routes.programStudi,
            ),
            _item(icon: Icons.call, label: 'Kontak Kami', route: Routes.kontak),
          ],
        ),
      ),
    );
  }

  ListTile _item({
    required IconData icon,
    required String label,
    required String route,
  }) {
    return ListTile(
      leading: Icon(icon),
      title: Text(label),
      onTap: () {
        Get.back(); // tutup drawer
        if (Get.currentRoute != route) {
          Get.toNamed(route);
        }
      },
    );
  }
}
