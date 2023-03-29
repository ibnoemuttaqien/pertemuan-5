import 'package:flutter/material.dart';
import 'package:pertemuan_lima/configs/app_routes.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: "Tugas 05 Asri - Navigasi 2.0 dan Layouting ",
      routeInformationProvider: AppRoutes.goRouter.routeInformationProvider,
      routerDelegate: AppRoutes.goRouter.routerDelegate,
      routeInformationParser: AppRoutes.goRouter.routeInformationParser,
    );
  }
}
