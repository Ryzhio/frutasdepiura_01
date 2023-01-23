import 'package:flutter/material.dart';
import 'package:frutasdepiura_01/screens/campa_screen/campa_screen.dart';
import 'package:frutasdepiura_01/screens/perfil_screen/perfil_screen.dart';

class CustomDrawerWidget extends StatelessWidget {
  const CustomDrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                    'https://cdn.pixabay.com/photo/2023/01/10/00/17/italy-7708552_960_720.jpg'),
              ),
            ),
            child: SizedBox(
              width: double.infinity,
              child: Center(
                child: Text(
                  'BIENVENIDO',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const CampaScreen(),
                ),
              );
            },
          ),
          // ListTile(
          //   leading: const Icon(Icons.settings),
          //   title: const Text('Ajustes'),
          //   onTap: () {
          //     Navigator.pushReplacementNamed(context, MyRoutes.rAJUSTES);
          //   },
          // ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Perfil'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const PerfilScreen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
