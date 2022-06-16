import 'package:flutter/material.dart';

import 'opcao.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
        title: 'BICO LEGAL',
        theme: ThemeData(primaryColor: Colors.deepOrange[700],
        backgroundColor: Colors.yellowAccent[200],
        fontFamily: 'biome',),
        initialRoute: '/capa',
        routes: {
          '/capa': (context) => TelaCapa(),
          '/cadastrar': (context) => TelaCadastrar(),
          '/entrar': (context) => TelaLogin(),
          '/sobre': (context) => TelaSobre(),
          '/contato': (context) => TelaContato(),
          '/opcao': (context) => TelaOpcao(),
          '/contratar': (context) => TelaContratar(),

        },
  ));
}


//-----------------------------------------//
//     >>>>>      TELA CAPA      <<<<<     //
//-----------------------------------------//

class TelaCapa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: Text('CAPA'),
        backgroundColor: Colors.green[700]),
        body: Center(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            Text("BICO LEGAL", style: TextStyle(fontSize: 50, fontFamily: "Georgia"),),
            RaisedButton(
              child: Text('CADASTRAR'),
                onPressed: () {
                  Navigator.pushNamed(context, '/cadastrar');
                },
            ),

            RaisedButton(
              child: Text('LOGIN'),
                onPressed: () {
                  Navigator.pushNamed(context, '/entrar'); 
                },
            ),

            RaisedButton(
              child: Text('SOBRE'),
                onPressed: () {
                  Navigator.pushNamed(context, '/sobre');
                  },
            ),   
          ] 
        )
      ),
    );
  }
}


//-----------------------------------------//
//          TELA CADASTRAR                 //
//-----------------------------------------//

class TelaCadastrar extends StatefulWidget {
  @override
  _TelaCadastrarState createState() => _TelaCadastrarState();
}

class _TelaCadastrarState extends State<TelaCadastrar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('CADASTRO'),),
      body: Center(
        child: Row(
          mainAxisAlignment: 
          MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text('CAPA'),
              onPressed: () {
              Navigator.pop(context);
              }
            )
          ]
        )
       ),
    );
  }
}

//-----------------------------------------//
//          TELA LOGIN                     //
//-----------------------------------------//

class TelaLogin extends StatefulWidget {
  @override
  _TelaLoginState createState() => _TelaLoginState();
}

class _TelaLoginState extends State<TelaLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('LOGIN'),),
      body: Center(child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RaisedButton(
            child: Text('CAPA'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),

          RaisedButton(
            child: Text('ESCOLHA'),
            onPressed: () {
              Navigator.pushNamed(context, '/opcao');
            },
          ),
        ],
      ),
      )
      
    );
  }
}

//-----------------------------------------//
//          TELA OPÇÃO                     //
//-----------------------------------------//
class TelaOpcao extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('OPÇÕES'),),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
          child: Column(        
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            HabilidadeWidget('Cozinheiro', 'Curso e Prática','assets/fotos/cozinheiro.jpg'),
            HabilidadeWidget('Jardineiro',  'Prática', 'assets/fotos/jardineiro.jpg'),
            HabilidadeWidget('Eletricista', 'Curso e Prática', 'assets/fotos/eletricista.jpg'),
            HabilidadeWidget('Costureira', 'Curso', 'assets/fotos/costureira.jpg'),
            HabilidadeWidget('Encanador', 'Curso e Prática', 'assets/fotos/encanador.jpg'),
            HabilidadeWidget('Faxineira', 'Prática', 'assets/fotos/faxineira.jpg'),


            RaisedButton(
              child: Text('CONTATO'),
              onPressed: () {
                Navigator.pushNamed(context, '/contato');
              },
            )
          ],
          )
      ), 
    );
  }
}

//-----------------------------------------//
//          TELA CONTATO                   //
//-----------------------------------------//
class TelaContato extends StatefulWidget {
  @override
  _TelaContatoState createState() => _TelaContatoState();
}

class _TelaContatoState extends State<TelaContato> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('CONTATO'),),
      body: Center(child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RaisedButton(
            child: Text('ESCOLHA'),
            onPressed: () {
              Navigator.pop(context);
              
            },
          ),

          RaisedButton(
            child: Text('CONTRATO'),
            onPressed: () {
              Navigator.pushNamed(context, '/contratar');
            },
          ),
        ],
      ),
      )
      
    );
  }
}

//-----------------------------------------//
//          TELA CONTRATAR                 //
//-----------------------------------------//

class TelaContratar extends StatefulWidget {
  @override
  _TelaContratarState createState() => _TelaContratarState();
}

class _TelaContratarState extends State<TelaContratar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('CONTRATAR'),),
      body: Center(child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RaisedButton(
            child: Text('ESCOLHA'),
            onPressed: () {
              Navigator.pop(context);
              Navigator.pop(context);
              
            },
          ),

          RaisedButton(
            child: Text('CAPA'),
            onPressed: () {
              Navigator.pop(context);
              Navigator.pop(context);
              Navigator.pop(context);
              Navigator.pop(context);
            },
          ),
        ],
      ),
      )
      
    );
  }
}

//-----------------------------------------//
//          TELA SOBRE                     //
//-----------------------------------------//

class TelaSobre extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: Text('SOBRE'),),
      body: SingleChildScrollView(padding: EdgeInsets.all(30),
        child: Column(mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text("Bico legal é um aplicativo de serviços", style: TextStyle(fontSize: 30)
          ), 
          SizedBox(height: 20,),
          Text("Para quem precisa e para quem oferece serviços", style: TextStyle(fontSize: 30)),
          
          SizedBox(height: 40,),  
          RaisedButton(
            child: Text('CAPA'),
            onPressed: () {
              Navigator.pop(context);
            }   
          ) 
        ] 
      )
      ),
    );   
  }
}