import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    String textoVitoria = "";
    if(textoVitoria == "ACHO QUE SIM"){
      textoVitoria = "VOCE VENCEU";
    }
    else if(textoVitoria == "ACHO QUE NAO"){
      textoVitoria = "VOCE PERDEU";
    }
    else{
      textoVitoria = "";
    }

    return MaterialApp(
      home: Column(
        children: [
          Row(
            children: [
              Text(
                "Jogo 2048", // Corrigido o erro de digitação também
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.purple, // Altere para a cor desejada
                ),
              ), Text("   ", style: TextStyle(fontSize: 20),),
              Text(
                "Movimentos:", // Corrigido o erro de digitação também
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blue, // Altere para a cor desejada
                ),
              ),
            ],
          ),
          Text(textoVitoria, style: TextStyle(fontSize: 20),),
          Row(
            children: [
              ElevatedButton(onPressed: (){}, child: Text("Nivel 1")),
              ElevatedButton(onPressed: (){}, child: Text("Nivel 2")),
              ElevatedButton(onPressed: (){}, child: Text("Nivel 3")),
            ],
          ),
          Row(
            children: [
              Container(
                color: Colors.white,
                child: Text("1"),
                width: 50,
                height: 50,
              ),
              Container(
                color: Colors.white,
                child: Text("1"),
                width: 50,
                height: 50,
              ),
              Container(
                color: Colors.white,
                child: Text("1"),
                width: 50,
                height: 50,
              ),
              Container(
                color: Colors.white,
                child: Text("1"),
                width: 50,
                height: 50,
              ),
            ],
          ),
          Row(
            children: [
              Container(
                color: Colors.white,
                child: Text("1"),
                width: 50,
                height: 50,
              ),
              Container(
                color: Colors.white,
                child: Text("1"),
                width: 50,
                height: 50,
              ),
              Container(
                color: Colors.white,
                child: Text("1"),
                width: 50,
                height: 50,
              ),
              Container(
                color: Colors.white,
                child: Text("1"),
                width: 50,
                height: 50,
              ),
            ],
          ),
          Row(
            children: [
              Container(
                color: Colors.white,
                child: Text("1"),
                width: 50,
                height: 50,
              ),
              Container(
                color: Colors.white,
                child: Text("1"),
                width: 50,
                height: 50,
              ),
              Container(
                color: Colors.white,
                child: Text("1"),
                width: 50,
                height: 50,
              ),
              Container(
                color: Colors.white,
                child: Text("1"),
                width: 50,
                height: 50,
              ),
            ],
          ),
          Row(
            children: [
              Container(
                color: Colors.white,
                child: Text("1"),
                width: 50,
                height: 50,
              ),
              Container(
                color: Colors.white,
                child: Text("1"),
                width: 50,
                height: 50,
              ),
              Container(
                color: Colors.white,
                child: Text("1"),
                width: 50,
                height: 50,
              ),
              Container(
                color: Colors.white,
                child: Text("1"),
                width: 50,
                height: 50,
              ),
            ],
          ),
          Row(
            children: [
              Container(

              ),
            ],
          ),

          Row(
            children: [
              Container(
                  child:
                  IconButton(
                    icon: Icon(Icons.arrow_back), // Ícone de seta para frente
                    color: Colors.white,             // Cor do ícone
                    iconSize: 30,                    // Tamanho do ícone
                    onPressed: () {
                      // Ação quando o botão é pressionado

                    },
                  )
              ),
              Container(
                  child:
                  IconButton(
                    icon: Icon(Icons.arrow_downward), // Ícone de seta para frente
                    color: Colors.white,             // Cor do ícone
                    iconSize: 30,                    // Tamanho do ícone
                    onPressed: () {
                      // Ação quando o botão é pressionado

                    },
                  )
              ),
              Container(
                  child:
                  IconButton(
                    icon: Icon(Icons.arrow_forward), // Ícone de seta para frente
                    color: Colors.white,             // Cor do ícone
                    iconSize: 30,                    // Tamanho do ícone
                    onPressed: () {
                      // Ação quando o botão é pressionado

                    },
                  )
              ),
            ],
          ),
        ],
      ),

    );
  }
}

/*

Center(
        child: Container(
          margin: const EdgeInsets.all(10.0),
          color: Colors.amber[600],
          width: 48.0,
          height: 48.0,
          child: Text("1"),
        ),
      )

 */