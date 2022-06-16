import 'package:flutter/material.dart';

class HabilidadeWidget extends StatelessWidget {
  //atributos
  final String profissao;
  final String experiencia;
  final String foto;


  //construtor
  HabilidadeWidget(
    this.profissao, this.experiencia, this.foto) : super();

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
      margin: EdgeInsets.all(25),

      decoration: BoxDecoration(
        border: Border.all(color: Colors.blue, width: 3),
        
        borderRadius: BorderRadius.all(
          Radius.circular(5)
        ),

        gradient: LinearGradient(
          colors: [Colors.lightGreen , Colors.blueGrey],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),

      ),

      child: Center(
        child: Column(
          children: [
            Text(profissao, style: TextStyle(fontSize: 30, color: Colors.red),),
            Text(experiencia, style: TextStyle(fontSize: 30, color: Colors.yellow[500]),),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(foto, scale: 0.2,)
            ),


        ],),
      )

    );
  }
}