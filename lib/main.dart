import 'package:flutter/material.dart';
import 'package:flutter_fontslarolmadan/ana_sayfa.dart';
import 'package:flutter_fontslarolmadan/arama.dart';
import 'package:flutter_fontslarolmadan/drewer_menu.dart';
import 'package:flutter_fontslarolmadan/harita.dart';
import 'package:flutter_fontslarolmadan/takvim.dart';
import 'package:flutter_fontslarolmadan/wigets/ortama_hesapla_page.dart';



void main(List<String> args) {
  runApp(const MyApp());
  
}




class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.cyan).copyWith(secondary: Colors.orangeAccent)
      ),
      home: const MYHomePage(),

    );
  }
}
class MYHomePage extends StatefulWidget {
  const MYHomePage({super.key});

  @override
  State<MYHomePage> createState() => _MYHomePageState();
}

class _MYHomePageState extends State<MYHomePage> {
int secilenDegerItem=0;
late List<Widget> tumSayfalar;
late AnaSayfa sayfaAna;
late AramaSayfai safaArama;
late takvimData sayfaTakvim;
late harita sayfaHarita;
late OrtamaHesaplaApp sayfaort;
//late TableBasicsExample sayfaTakvim;

var keyAnasayfa=const PageStorageKey('key_ana_sayfa');
var keyArama=const PageStorageKey('key_arama_sayfa');
var keyTakvim=const PageStorageKey('key_takvim_sayfa');
var keyHarita=const PageStorageKey('key_harita_sayfa');
var keyOrtamaHesaplaApp=const PageStorageKey('key_ortalma_sayfa');
//var keyTakvim=const PageStorageKey('key_takvim_sayfa');

@override
  void initState() {
    super.initState();
    sayfaAna= AnaSayfa(keyAnasayfa);
    safaArama= AramaSayfai(keyArama);
    sayfaTakvim= takvimData(keyTakvim);
    sayfaHarita= harita(keyHarita);
    sayfaort=OrtamaHesaplaApp(keyOrtamaHesaplaApp);
    //sayfaTakvim=TableBasicsExample(keyTakvim);
    // pageViewOrenk=PageViewOrenk();
    tumSayfalar=[sayfaAna,safaArama,sayfaTakvim,sayfaHarita,sayfaort];
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrewerMenu(),
      appBar: AppBar(
        title: const Text('Ödev'),
        backgroundColor: Colors.grey,
      ),
      body:tumSayfalar[secilenDegerItem],
      bottomNavigationBar: bottomNav(),

     
      
    );
  }

  BottomNavigationBar bottomNav() {
    return BottomNavigationBar(items: const <BottomNavigationBarItem>[
       BottomNavigationBarItem(icon: Icon(Icons.home),label:('anadayfa'),backgroundColor: Colors.amber ),
     BottomNavigationBarItem(icon: Icon(Icons.search),label:('ara'),backgroundColor: Colors.red ),
     BottomNavigationBarItem(icon: Icon(Icons.calendar_today),label:('takvim'),backgroundColor: Colors.brown ),
     BottomNavigationBarItem(icon: Icon(Icons.map_rounded),label:('harita'),backgroundColor: Colors.blue ),
     BottomNavigationBarItem(icon: Icon(Icons.event_available_sharp),label:('Ortama'),backgroundColor: Colors.tealAccent ),
     
     
    ],
    type: BottomNavigationBarType.shifting,//dört tane olursa bunu yazarız
    currentIndex: secilenDegerItem,
    onTap: (index) {
      setState(() {
        secilenDegerItem=index;
      });
      
    },

    );
  }
  
  
    
  
}