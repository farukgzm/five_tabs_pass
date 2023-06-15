// ignore: duplicate_ignore


// ignore_for_file: file_names

import 'package:flutter/material.dart';

class KisiselFont extends StatelessWidget {
  const KisiselFont({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
       body: Center(
        // ignore: unnecessary_string_escapes
        child: Text('Kişisel font kullanımı',
        style: TextStyle( 
          fontSize: 35,
          fontWeight: FontWeight.w700
          ),
          ),
      ),
      
    );
  }
}