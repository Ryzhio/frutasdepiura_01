import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ClienFinal2023 extends StatelessWidget {
  const ClienFinal2023({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 50),
              child: Row(
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('assets/clien.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    'CLIENTES',
                    style: GoogleFonts.ultra(
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 320,
                  child: Material(
                    borderRadius: BorderRadius.circular(100),
                    elevation: 10,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(100)),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              decoration: const InputDecoration(
                                hintText: "Search clients final",
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: Colors.green,
                                ),
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                              ),
                            ),
                          ),
                          const CircleAvatar(
                            radius: 20,
                            backgroundColor: Colors.green,
                            child: Icon(
                              Icons.sort_by_alpha_sharp,
                              color: Colors.amber,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Text(
                      'CLIENTE',
                      style: GoogleFonts.ultra(),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Material(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.green,
                      child: Container(
                        alignment: Alignment.bottomCenter,
                        width: 210,
                        child: Text(
                          'EXP GROUP LLC',
                          style: GoogleFonts.ultra(),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Material(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.green,
                      child: Container(
                        alignment: Alignment.bottomCenter,
                        width: 210,
                        child: Text(
                          'EXP GROUP LLC',
                          style: GoogleFonts.ultra(),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Material(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.green,
                      child: Container(
                        alignment: Alignment.bottomCenter,
                        width: 210,
                        child: Text(
                          'EXP GROUP LLC',
                          style: GoogleFonts.ultra(),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Material(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.green,
                      child: Container(
                        alignment: Alignment.bottomCenter,
                        width: 210,
                        child: Text(
                          'EXP GROUP LLC',
                          style: GoogleFonts.ultra(),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Material(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.green,
                      child: Container(
                        alignment: Alignment.bottomCenter,
                        width: 210,
                        child: Text(
                          'EXP GROUP LLC',
                          style: GoogleFonts.ultra(),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Material(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.green,
                      child: Container(
                        alignment: Alignment.bottomCenter,
                        width: 210,
                        child: Text(
                          'EXP GROUP LLC',
                          style: GoogleFonts.ultra(),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Material(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.green,
                      child: Container(
                        alignment: Alignment.bottomCenter,
                        width: 210,
                        child: Text(
                          'EXP GROUP LLC',
                          style: GoogleFonts.ultra(),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Material(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.green,
                      child: Container(
                        alignment: Alignment.bottomCenter,
                        width: 210,
                        child: Text(
                          'EXP GROUP LLC',
                          style: GoogleFonts.ultra(),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Material(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.green,
                      child: Container(
                        alignment: Alignment.bottomCenter,
                        width: 210,
                        child: Text(
                          'EXP GROUP LLC',
                          style: GoogleFonts.ultra(),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Material(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.green,
                      child: Container(
                        alignment: Alignment.bottomCenter,
                        width: 210,
                        child: Text(
                          'EXP GROUP LLC',
                          style: GoogleFonts.ultra(),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      'N° ENVIO',
                      style: GoogleFonts.ultra(),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Material(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.green,
                        child: Container(
                          alignment: Alignment.bottomCenter,
                          width: 140,
                          child: Text(
                            'N°0001',
                            style: GoogleFonts.ultra(),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Material(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.green,
                        child: Container(
                          alignment: Alignment.bottomCenter,
                          width: 140,
                          child: Text(
                            'N°0002',
                            style: GoogleFonts.ultra(),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Material(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.green,
                        child: Container(
                          alignment: Alignment.bottomCenter,
                          width: 140,
                          child: Text(
                            'N°0003',
                            style: GoogleFonts.ultra(),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Material(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.green,
                        child: Container(
                          alignment: Alignment.bottomCenter,
                          width: 140,
                          child: Text(
                            'N°0004',
                            style: GoogleFonts.ultra(),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Material(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.green,
                        child: Container(
                          alignment: Alignment.bottomCenter,
                          width: 140,
                          child: Text(
                            'N°0005',
                            style: GoogleFonts.ultra(),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Material(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.green,
                        child: Container(
                          alignment: Alignment.bottomCenter,
                          width: 140,
                          child: Text(
                            'N°0006',
                            style: GoogleFonts.ultra(),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Material(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.green,
                        child: Container(
                          alignment: Alignment.bottomCenter,
                          width: 140,
                          child: Text(
                            'N°0007',
                            style: GoogleFonts.ultra(),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Material(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.green,
                        child: Container(
                          alignment: Alignment.bottomCenter,
                          width: 140,
                          child: Text(
                            'N°0008',
                            style: GoogleFonts.ultra(),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Material(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.green,
                        child: Container(
                          alignment: Alignment.bottomCenter,
                          width: 140,
                          child: Text(
                            'N°0009',
                            style: GoogleFonts.ultra(),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Material(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.green,
                        child: Container(
                          alignment: Alignment.bottomCenter,
                          width: 140,
                          child: Text(
                            'N°0010',
                            style: GoogleFonts.ultra(),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
