import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
const HomePage({ super.key });

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color(0xff15161A),
      body: Text('Noel Pinto',
        style: TextStyle(
          fontFamily: 'Inter',
          color: Colors.white,
          fontSize: 40
        ),
      ),
    );
  }
}