import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int cuenta = 0;
  bool rojoActive = false;
  bool ambarActive = false;
  bool verdeActive = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              margin: EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: rojoActive ? Colors.red : Colors.grey[300]
              ),
            ),
            Container(
              width: 100,
              height: 100,
              margin: EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: ambarActive ? Colors.orange : Colors.grey[300]
              ),
            ),
            Container(
              width: 100,
              height: 100,
              margin: EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: verdeActive ? Colors.green : Colors.grey[300]
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          cambiarColor();
          print(cuenta);
        },
      ),
    );
  }
  void cambiarColor(){
    cuenta++;
    if(cuenta == 3) cuenta = 0;
    if(cuenta == 0){
      rojoActive = false;
      ambarActive = false;
      verdeActive = true;
    }else if (cuenta == 1){
      rojoActive = false;
      ambarActive = true;
      verdeActive = false;
    }else if (cuenta == 2){
      rojoActive = true;
      ambarActive = false;
      verdeActive = false;
    }
    setState(() {
      
    });
  }
}