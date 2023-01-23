import 'package:flutter/material.dart';
import 'package:frutasdepiura_01/screens/campa_screen/menu_usuario_screen/menu_campa_2022/menu_campa_2022.dart';
import 'package:frutasdepiura_01/screens/campa_screen/menu_usuario_screen/menu_campa_2023/menu_campa_2023.dart';
import 'package:frutasdepiura_01/widgets/custom_drawer/custom_drawer.dart';
import 'package:google_fonts/google_fonts.dart';

class CampaScreen extends StatelessWidget {
  const CampaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'CAMPAÑAS',
          style: GoogleFonts.ultra(
            color: Colors.green,
            letterSpacing: 1,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      drawer: const CustomDrawerWidget(),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Column(
              children: [
                MaterialButton(
                  color: Colors.green,
                  minWidth: 300,
                  height: 40,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MenuCampa2023(),
                      ),
                    );
                  },
                  child: Text(
                    'CAMPAÑA 2023',
                    style: GoogleFonts.ultra(
                      color: Colors.white,
                      fontSize: 15,
                      letterSpacing: 1,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                MaterialButton(
                  color: Colors.green,
                  minWidth: 300,
                  height: 40,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MenuCampa2022(),
                      ),
                    );
                  },
                  child: Text(
                    'CAMPAÑA 2022',
                    style: GoogleFonts.ultra(
                      color: Colors.white,
                      fontSize: 15,
                      letterSpacing: 1,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                MaterialButton(
                  color: Colors.green,
                  minWidth: 300,
                  height: 40,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => const MenuSecondPage(),
                    //   ),
                    // );
                  },
                  child: Text(
                    'CAMPAÑA 2021',
                    style: GoogleFonts.ultra(
                      color: Colors.white,
                      fontSize: 15,
                      letterSpacing: 1,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                MaterialButton(
                  color: Colors.green,
                  minWidth: 300,
                  height: 40,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => const MenuSecondPage(),
                    //   ),
                    // );
                  },
                  child: Text(
                    'CAMPAÑA 2020',
                    style: GoogleFonts.ultra(
                      color: Colors.white,
                      fontSize: 15,
                      letterSpacing: 1,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                MaterialButton(
                  color: Colors.green,
                  minWidth: 300,
                  height: 40,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => const MenuSecondPage(),
                    //   ),
                    // );
                  },
                  child: Text(
                    'CAMPAÑA 2019',
                    style: GoogleFonts.ultra(
                      color: Colors.white,
                      fontSize: 15,
                      letterSpacing: 1,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                MaterialButton(
                  color: Colors.green,
                  minWidth: 300,
                  height: 40,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => const MenuSecondPage(),
                    //   ),
                    // );
                  },
                  child: Text(
                    'CAMPAÑA 2018',
                    style: GoogleFonts.ultra(
                      color: Colors.white,
                      fontSize: 15,
                      letterSpacing: 1,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                MaterialButton(
                  color: Colors.green,
                  minWidth: 300,
                  height: 40,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => const MenuSecondPage(),
                    //   ),
                    // );
                  },
                  child: Text(
                    'CAMPAÑA 2017',
                    style: GoogleFonts.ultra(
                      color: Colors.white,
                      fontSize: 15,
                      letterSpacing: 1,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                MaterialButton(
                  color: Colors.green,
                  minWidth: 300,
                  height: 40,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => const MenuSecondPage(),
                    //   ),
                    // );
                  },
                  child: Text(
                    'CAMPAÑA 2016',
                    style: GoogleFonts.ultra(
                      color: Colors.white,
                      fontSize: 15,
                      letterSpacing: 1,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                MaterialButton(
                  color: Colors.green,
                  minWidth: 300,
                  height: 40,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => const MenuSecondPage(),
                    //   ),
                    // );
                  },
                  child: Text(
                    'CAMPAÑA 2015',
                    style: GoogleFonts.ultra(
                      color: Colors.white,
                      fontSize: 15,
                      letterSpacing: 1,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
