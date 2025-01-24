import 'package:basic_underline/basic_underline.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website_noelpinto/pages/about.dart';
import 'package:portfolio_website_noelpinto/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  static List<String> menuOptions = ["Home", "About", "Projects", "Contact"];
  static List<Widget> pages = [const HomePage(), const AboutPage()];
  static int currentIndex = 0;

  late SwiperController swiperController;

  @override
  void initState() {
    super.initState();
    swiperController = SwiperController();
  }

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
          shape:
              Border(bottom: BorderSide(color: Color(0xffC6A686), width: 1.0)),
          toolbarHeight: height * 0.1,
          leading: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: menuOptions.length,
              itemBuilder: (context, index) {
                return TextButton(
                  onPressed: () {
                    setState(() {
                      currentIndex = index;
                      swiperController.move(index);
                    });
                  },
                  style: ButtonStyle(
                    overlayColor: WidgetStateProperty.all(Colors.transparent),
                    mouseCursor: WidgetStatePropertyAll(MouseCursor.defer),
                  ),
                  child: UnderlineText(
                    text: menuOptions[index],
                    textColor: index == currentIndex
                        ? Color(0xffC6A686)
                        : Colors.white,
                    underlineColor: Color(0xffC6A686),
                    hoverTextColor: Color(0xffC6A686),
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
        body: Swiper(
          controller: swiperController,
          itemCount: 2,
          index: currentIndex,
          itemBuilder: (context, index) {
            return pages[index];
          },
          scrollDirection: Axis.vertical,
          onIndexChanged: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          pagination: SwiperPagination(
            alignment: Alignment.centerRight,
            builder: DotSwiperPaginationBuilder(
              color: Colors.white,
              activeColor: Color(0xffC6A686),
            ),
          ),
          curve: Curves.easeIn,
          loop: false,
        ),
      ),
    );
  }
}
