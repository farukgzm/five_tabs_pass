import 'package:flutter/material.dart';
import 'package:flutter_fontslarolmadan/model/veri.dart';


class AnaSayfa extends StatefulWidget {

  const AnaSayfa(Key k)  :super(key: k);

  

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  late List<Veri> tumVeriler;
  @override
  void initState() {
    
    super.initState();
    tumVeriler=[
      Veri('biz Kimiz','YAZILIMINI GELİŞTİRMEYE ÇALIŞAN',false),
      Veri('bizim iş','YAZILIM',false),
      Veri('vizyonumuz','YENİLİKÇİ VE GELİŞTİRMECİ',false),
      Veri('iletişim','guldenakarsu@gmail.com',false),
    ];
    
  }
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context,index){
      return ExpansionTile(key: PageStorageKey('$index'),title: Text(tumVeriler[index].baslik),//burada sayfa geri döndüğünde liste tarzı bişeyin farklı keylerini veriyor
      initiallyExpanded: tumVeriler[index].expanded,
      children: <Widget>[
        Container(
          color: index % 2==0? Colors.blue.shade200:Colors.yellow.shade300,
          height: 100,
          width: double.infinity,
          child: Text(tumVeriler[index].icerik),
        )
      ],
      
      );

    },
    itemCount: tumVeriler.length,
    );
    
  }
}