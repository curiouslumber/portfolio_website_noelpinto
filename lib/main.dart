import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website_noelpinto/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static List<String> menuOptions = ["Home", "About", "Projects", "Contact"];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Noel Pinto\'s Portfolio',
      theme: ThemeData(
        textTheme: GoogleFonts.interTextTheme(),
        useMaterial3: true,
      ),
      home: Scaffold(
          backgroundColor: Color(0xff252525),
          appBar: AppBar(
            title: Text(
              'Noel Pinto',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: GoogleFonts.inter().fontFamily,
                  fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
            backgroundColor: Color(0xff252525),
            surfaceTintColor: Colors.transparent,
            shape: Border(
                bottom: BorderSide(color: Color(0xffC6A686), width: 1.0)),
            toolbarHeight: height * 0.1,
            leading: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: menuOptions.length,
                itemBuilder: (context, index) {
                  return TextButton(
                    onPressed: () {},
                    child: Text(
                      menuOptions[index],
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: GoogleFonts.inter().fontFamily,
                        fontSize: 16,
                      ),
                    ),
                  );
                },
              ),
            ),
            leadingWidth: height * 0.4,
            actions: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.dark_mode, color: Colors.white)),
              )
            ],
          ),
          body: SingleChildScrollView(
            child: HomePage(),
          )),
    );
  }
}
