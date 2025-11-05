import 'package:get/get.dart';

import '../modules/home/views/home_view.dart';
import '../modules/home/controllers/home_controller.dart';

import '../modules/profil/views/profil_view.dart';
import '../modules/profil/controllers/profil_controller.dart';

import '../modules/visi_misi/views/visi_misi_view.dart';
import '../modules/visi_misi/controllers/visi_misi_controller.dart';

import '../modules/program_studi/views/program_studi_view.dart';
import '../modules/program_studi/controllers/program_studi_controller.dart';

import '../modules/kontak/views/kontak_view.dart';
import '../modules/kontak/controllers/kontak_controller.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static final routes = <GetPage>[
    GetPage(
      name: Routes.home,
      page: () => const HomeView(),
      binding: BindingsBuilder.put(() => HomeController()),
      // Optional animasi transisi biar halus tapi tetap Drawer-based
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 180),
    ),
    GetPage(
      name: Routes.profil,
      page: () => const ProfilView(),
      binding: BindingsBuilder.put(() => ProfilController()),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 180),
    ),
    GetPage(
      name: Routes.visiMisi,
      page: () => const VisiMisiView(),
      binding: BindingsBuilder.put(() => VisiMisiController()),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 180),
    ),
    GetPage(
      name: Routes.programStudi,
      page: () => const ProgramStudiView(),
      binding: BindingsBuilder.put(() => ProgramStudiController()),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 180),
    ),
    GetPage(
      name: Routes.kontak,
      page: () => const KontakView(),
      binding: BindingsBuilder.put(() => KontakController()),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 180),
    ),
  ];
}
