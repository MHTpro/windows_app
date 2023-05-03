import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:windows_app/pages/info_page.dart';
import 'package:windows_app/provider/provider_class.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  //form_Key
  final _formKey = GlobalKey<FormState>();
  bool seePassword = true;

  @override
  Widget build(BuildContext context) {
    //get_information_from_Provider_class
    final information = Provider.of<ProviderClass>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text(
          "Registration Form",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Icon(
                  Icons.list_alt_sharp,
                  color: Colors.black,
                  size: 100.0,
                ),
                const SizedBox(height: 20.0),
                //F_name --start
                SizedBox(
                  height: 90.0,
                  width: 400.0,
                  child: TextFormField(
                    controller: information.fName,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Cant be empty!";
                      }
                      return null;
                    },
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                    ),
                    decoration: InputDecoration(
                      labelText: "First name",
                      labelStyle: const TextStyle(
                        color: Colors.white70,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                      ),
                      border: const UnderlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      errorStyle: TextStyle(
                        color: Colors.red.shade400,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                      ),
                      prefixIcon: const Icon(
                        Icons.person,
                        color: Colors.black,
                      ),
                      filled: true,
                      fillColor: Colors.brown,
                    ),
                  ),
                ),

                //F-name --end

                const SizedBox(height: 20.0),

                //L_name --start
                SizedBox(
                  height: 90.0,
                  width: 400.0,
                  child: TextFormField(
                    controller: information.lName,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Cant be empty!";
                      }
                      return null;
                    },
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                    ),
                    decoration: InputDecoration(
                      labelText: "Last name",
                      labelStyle: const TextStyle(
                        color: Colors.white70,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                      ),
                      border: const UnderlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      errorStyle: TextStyle(
                        color: Colors.red.shade400,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                      ),
                      prefixIcon: const Icon(
                        Icons.wysiwyg_rounded,
                        color: Colors.black,
                      ),
                      filled: true,
                      fillColor: Colors.brown.withOpacity(0.9),
                    ),
                  ),
                ),
                //L_name --end

                const SizedBox(height: 30.0),
                //Email --start
                SizedBox(
                  height: 90.0,
                  width: 400.0,
                  child: TextFormField(
                    controller: information.email,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Cant be empty!";
                      }
                      if (!(value.endsWith("@gmail.com"))) {
                        return "Enter valid email!";
                      }
                      return null;
                    },
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                    ),
                    decoration: InputDecoration(
                      labelText: "Email",
                      labelStyle: const TextStyle(
                        color: Colors.white70,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                      ),
                      border: const UnderlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      errorStyle: TextStyle(
                        color: Colors.red.shade400,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                      ),
                      prefixIcon: const Icon(
                        Icons.email,
                        color: Colors.black,
                      ),
                      filled: true,
                      fillColor: Colors.brown.withOpacity(0.8),
                    ),
                  ),
                ),

                //Email --end

                const SizedBox(height: 20.0),
                //password --start
                SizedBox(
                  height: 90.0,
                  width: 400.0,
                  child: TextFormField(
                    controller: information.password,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Cant be empty!";
                      }
                      if (value.length < 8) {
                        return "Enter 8 char or more!";
                      }
                      return null;
                    },
                    obscureText: seePassword,
                    obscuringCharacter: "*",
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                    ),
                    decoration: InputDecoration(
                      labelText: "Password",
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(
                            () {
                              if (seePassword == true) {
                                seePassword = false;
                              } else if (seePassword == false) {
                                seePassword = true;
                              }
                            },
                          );
                        },
                        icon: Icon(
                          Icons.remove_red_eye_outlined,
                          color: seePassword == true
                              ? Colors.black54
                              : Colors.white,
                        ),
                        splashRadius: 1.0,
                        hoverColor: Colors.black,
                      ),
                      labelStyle: const TextStyle(
                        color: Colors.white70,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                      ),
                      border: const UnderlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      errorStyle: TextStyle(
                        color: Colors.red.shade400,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                      ),
                      prefixIcon: const Icon(
                        Icons.linear_scale_outlined,
                        color: Colors.black,
                      ),
                      filled: true,
                      fillColor: Colors.brown.withOpacity(0.7),
                    ),
                  ),
                ),

                //password --end

                const SizedBox(
                  height: 50.0,
                ),

                ElevatedButton(
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return const InfoPage();
                          },
                        ),
                      );
                    }
                  },
                  style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all(
                      const Size(160.0, 50.0),
                    ),
                    backgroundColor: MaterialStateColor.resolveWith(
                      (states) {
                        if (states.contains(MaterialState.hovered)) {
                          return Colors.black45;
                        }
                        return Colors.black;
                      },
                    ),
                  ),
                  child: const Text(
                    "Submit",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
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
