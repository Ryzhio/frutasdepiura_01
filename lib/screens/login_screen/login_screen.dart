// ignore_for_file: use_build_context_synchronously, non_constant_identifier_names
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:frutasdepiura_01/constants.dart';
import 'package:frutasdepiura_01/screens/index.dart';
import 'package:frutasdepiura_01/screens/register_screen/signup_screen.dart';
import 'package:frutasdepiura_01/widgets/login_input_decoration/input_decoration_login.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var formkey = GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  bool? checkGuardarDatos = false;
  bool _ispassword = true;

  void _viewPassword() {
    setState(() {
      _ispassword = !_ispassword;
    });
  }

  SharedPreferences? _prefs;

  @override
  void initState() {
    cargarPreferencias();
    super.initState();
  }

  cargarPreferencias() async {
    _prefs = await SharedPreferences.getInstance();
  }

  Future login() async {
    var url = Uri.http(Constants().ip, '/api_login/login.php', {'q': '{http}'});
    var response = await http.post(url, body: {
      "useremail": email.text,
      "password": pass.text,
    });
    var data = json.decode(response.body);
    if (data == "Success") {
      Fluttertoast.showToast(
          backgroundColor: Colors.green,
          textColor: Colors.white,
          msg: 'Login Successfully.',
          toastLength: Toast.LENGTH_SHORT);

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const CampaScreen(),
        ),
      );
    } else {
      Fluttertoast.showToast(
          backgroundColor: Colors.red,
          textColor: Colors.white,
          msg: 'Email or password invalid.',
          toastLength: Toast.LENGTH_SHORT);
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          final FocusScopeNode focus = FocusScope.of(context);
          if (!focus.hasPrimaryFocus && focus.hasFocus) {
            FocusManager.instance.primaryFocus?.unfocus();
          }
        },
        child: Container(
          color: Colors.black38,
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              //LOGIN SCREEN HEADER
              Container(
                color: Colors.white,
                width: double.infinity,
                height: size.height * 0.4,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'FRUTAS',
                          style: GoogleFonts.ultra(
                            color: const Color.fromARGB(255, 24, 207, 7),
                            fontSize: 23,
                            letterSpacing: 1.5,
                          ),
                        ),
                        Text(
                          ' DE PIURA',
                          style: GoogleFonts.ultra(
                            color: const Color.fromARGB(255, 3, 101, 7),
                            fontSize: 23,
                            letterSpacing: 1.5,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Image.asset('assets/mango.png', scale: 9),
                  ],
                ),
              ),
              //LOGIN SCREEN SIGN-IN FORM
              SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 260,
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 30),
                      width: double.infinity,
                      height: 540,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 15,
                            offset: Offset(10, 10),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 25,
                          ),
                          Text(
                            '!WELCOME¡',
                            style: GoogleFonts.ultra(
                                fontSize: 28,
                                letterSpacing: 1,
                                color: const Color.fromARGB(221, 21, 70, 28)),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Container(
                            width: 300,
                            child: Form(
                              key: formkey,
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              child: Column(
                                children: [
                                  TextFormField(
                                    controller: email,
                                    autocorrect: false,
                                    keyboardType: TextInputType.emailAddress,
                                    decoration:
                                        InputDecorationLogin.inputDecoration(
                                      hintext: 'Enter Email',
                                      labeltext: 'Email',
                                      icono: const Icon(
                                        Icons.alternate_email_rounded,
                                      ),
                                    ),
                                    validator: (value) {
                                      String caracteres =
                                          r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                                      RegExp regExp = RegExp(caracteres);
                                      return regExp.hasMatch(value ?? '')
                                          ? null
                                          : 'Invalid Email ';
                                    },
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  TextFormField(
                                    controller: pass,
                                    autocorrect: false,
                                    obscureText: _ispassword,
                                    keyboardType: TextInputType.text,
                                    decoration: InputDecoration(
                                      enabledBorder: const UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.green,
                                        ),
                                      ),
                                      focusedBorder: const UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.green,
                                          width: 2,
                                        ),
                                      ),
                                      hintText: 'Enter Password',
                                      labelText: 'Password',
                                      prefixIcon:
                                          const Icon(Icons.lock_outline),
                                      suffixIcon: InkWell(
                                        onTap: _viewPassword,
                                        child: Icon(_ispassword
                                            ? Icons.visibility_off
                                            : Icons.visibility),
                                      ),
                                    ),
                                    validator: (value) {
                                      return (value != null &&
                                              value.length >= 8)
                                          ? null
                                          : 'Must be at least 8 characters';
                                    },
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  //MARCADOR DESEAS GUARDAR CORREO Y CONTRASEÑA
                                  CheckboxListTile(
                                    value: checkGuardarDatos,
                                    title: const Text(
                                      'Save email and password',
                                      style: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 13,
                                      ),
                                    ),
                                    onChanged: (value) {
                                      setState(() {
                                        checkGuardarDatos = value;
                                      });
                                    },
                                    secondary: const Icon(Icons.safety_check),
                                  ),
                                  const SizedBox(
                                    height: 40,
                                  ),
                                  //LOGIN BUTTON
                                  GestureDetector(
                                    onTap: () {
                                      if (formkey.currentState!.validate()) {
                                        //VALIDATE THE EMAIL
                                        login();
                                      }
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.all(15),
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(50).copyWith(
                                          topRight: const Radius.circular(0),
                                        ),
                                        gradient: const LinearGradient(
                                          colors: [
                                            Color.fromARGB(255, 13, 252, 21),
                                            Colors.amber,
                                          ],
                                        ),
                                      ),
                                      child: Text(
                                        'LOGIN',
                                        style: TextStyle(
                                          color: Colors.white.withOpacity(.8),
                                          fontSize: 13,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 25,
                                  ),
                                  //SIGNUP BUTTON
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Text(
                                        "Don't have an Account?",
                                        style: TextStyle(fontSize: 15),
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  const SignUpdate(),
                                            ),
                                          );
                                          // Get.to(const SignUpScreen());
                                        },
                                        child: const Text(
                                          'SignUp Here',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.red,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        'Forgot password?',
                        style: TextStyle(
                          color: Colors.white.withOpacity(.8),
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
