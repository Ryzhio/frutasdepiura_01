import 'package:flutter/material.dart';
import 'package:frutasdepiura_01/widgets/custom_drawer/custom_drawer.dart';

class PerfilScreen extends StatelessWidget {
  const PerfilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PERFIL'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      drawer: const CustomDrawerWidget(),
    );
  }
}
