import 'dart:io';

import 'package:credit_card/credit_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pagos_stripe/data/tarjetas.dart';
import 'package:pagos_stripe/widgets/texto_personalizado.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  
  String titulo = "Home Page";

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: TextoPersonalizado(Colors.blue, titulo),
        actions: [
          IconButton(
            icon: Icon(
              Icons.add,
            ),
            onPressed: (){
              titulo = "Probando";
              setState(() {
                
              });
            }
          ),
        ],
      ),
      body: Stack(
        children: [
          Positioned(
            width: size.width,
            height: size.height,
            top: 200,
            child: PageView.builder(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              itemCount: lista.length,
              itemBuilder: (_, int index){
                return CreditCardWidget(
                  cardNumber: lista[index].cardNumber, 
                  expiryDate: lista[index].expiracyDate,
                  cardHolderName: lista[index].cardHolderName,
                  cvvCode: lista[index].cvv,
                  showBackView: false,
                );
              }
            ),
          ),
          Positioned(
            bottom: 0,
            child: _BtnPay()
          )
        ],
      ) 
    );
  }
}

class _BtnPay extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: 100,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Monto a pagar", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              Text("250 PEN", style: TextStyle(fontSize: 16)),
            ],
          ),
          MaterialButton(
            height: 45,
            minWidth: 150,
            shape: StadiumBorder(),
            color: Colors.black,
            onPressed: (){},
            child: Row(
              children: [
                Icon(
                  !Platform.isIOS ? FontAwesomeIcons.apple : FontAwesomeIcons.google,
                  color: Colors.white
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text("Pagar", style: TextStyle(color: Colors.white))
                )
              ],
            ),
          ),
        ],
      ),
      
      
    );
  }
}
/* class _HomePageState extends State<HomePage> {
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
} */