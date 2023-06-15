import 'package:flutter/material.dart';

// ignore: camel_case_types
class takvimData extends StatefulWidget {
  const takvimData(PageStorageKey<String> keyTakvim, {super.key});

  @override
  State<takvimData> createState() => _takvimDataState();
}

// ignore: camel_case_types
class _takvimDataState extends State<takvimData> {
  //burada zamanlama ayaraı
DateTime _dateTime=DateTime.now();

  void _showDate(){
    showDatePicker(context: context, 
    initialDate: DateTime.now(), 
    firstDate: DateTime(2000), 
    lastDate: DateTime(2025),
    
    ).then((value){
      setState(() {
        _dateTime=value!;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(_dateTime.toString(),style:const TextStyle(fontSize: 30)),
            MaterialButton(onPressed: _showDate,
            color: Colors.red,
            child: const Padding(padding: EdgeInsets.all(20.0),
            child: Text('Takvim',style: TextStyle(color: Colors.white,fontSize: 25),),
      
            ),
            ),
          ],
        ),
      ),
    );
  }
}