import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(ClassePai());
}

class ClassePai extends StatefulWidget{
  /*ATRIBUTOS*/
  int vitoria_aconteceu = 0; //0 nada aconteceu, 1 vitoria 2 derrota
  List<List<int>> tabuleiro_facil = [[0,0,0,0], [0,0,0,0], [0,0,0,0], [0,0,0,0]];

  void botaoParaBaixo(){
    /*o que fazer quando o botao pra baixo for clicado*/

    for(int i = 3; i >= 0; i--){
      if( i == 3){
        //calculo a soma, se possível

      }
      else {
        //desloco as pecas
        tabuleiro_facil[i][3] = tabuleiro_facil[i][2];
        tabuleiro_facil[i][2] = tabuleiro_facil[i][1];
        tabuleiro_facil[i][1] = tabuleiro_facil[i][0];
        tabuleiro_facil[i][0] = 0;
      }
    }


    colocaNovaPeca();
  }

  void colocaNovaPeca(){
    bool nova_peca_adicionada = false;
    do {
      int x = Random().nextInt(4);
      int y = Random().nextInt(4);
      if (tabuleiro_facil[x][y] == 0) {
        tabuleiro_facil[x][y] = 1;
        nova_peca_adicionada = true;
      }
    }while(nova_peca_adicionada == false);
  }

  /*Chama a classe filha*/
  State<ClassePai> createState(){

    return ClasseFilha();
  }
}

class ClasseFilha extends State<ClassePai>{
  Widget build(BuildContext context){

    String textoVitoria = "";
    List<List<int>> tabuleiro = widget.tabuleiro_facil;
    if(widget.vitoria_aconteceu == 1){
      textoVitoria = "VOCE VENCEU";
    }
    else if(widget.vitoria_aconteceu == 2){
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
              ElevatedButton(
                  onPressed: (){
                           },
                  child: Text("Nivel 1")
              ),
              ElevatedButton(onPressed: (){}, child: Text("Nivel 2")),
              ElevatedButton(onPressed: (){}, child: Text("Nivel 3")),
            ],
          ),
          Row(
            children: [
              Container(
                color: Colors.white,
                child: Text("${tabuleiro[0][0]}"),
                width: 50,
                height: 50,
              ),
              Container(
                color: Colors.white,
                child: Text("${tabuleiro[1][0]}"),
                width: 50,
                height: 50,
              ),
              Container(
                color: Colors.white,
                child: Text("${tabuleiro[2][0]}"),
                width: 50,
                height: 50,
              ),
              Container(
                color: Colors.white,
                child: Text("${tabuleiro[3][0]}"),
                width: 50,
                height: 50,
              ),
            ],
          ),
          Row(
            children: [
              Container(
                color: Colors.white,
                child: Text("${tabuleiro[0][1]}"),
                width: 50,
                height: 50,
              ),
              Container(
                color: Colors.white,
                child: Text("${tabuleiro[1][1]}"),
                width: 50,
                height: 50,
              ),
              Container(
                color: Colors.white,
                child: Text("${tabuleiro[2][1]}"),
                width: 50,
                height: 50,
              ),
              Container(
                color: Colors.white,
                child: Text("${tabuleiro[3][1]}"),
                width: 50,
                height: 50,
              ),
            ],
          ),
          Row(
            children: [
              Container(
                color: Colors.white,
                child: Text("${tabuleiro[0][2]}"),
                width: 50,
                height: 50,
              ),
              Container(
                color: Colors.white,
                child: Text("${tabuleiro[1][2]}"),
                width: 50,
                height: 50,
              ),
              Container(
                color: Colors.white,
                child: Text("${tabuleiro[2][2]}"),
                width: 50,
                height: 50,
              ),
              Container(
                color: Colors.white,
                child: Text("${tabuleiro[3][2]}"),
                width: 50,
                height: 50,
              ),
            ],
          ),
          Row(
            children: [
              Container(
                color: Colors.white,
                child: Text("${tabuleiro[0][3]}"),
                width: 50,
                height: 50,
              ),
              Container(
                color: Colors.white,
                child: Text("${tabuleiro[1][3]}"),
                width: 50,
                height: 50,
              ),
              Container(
                color: Colors.white,
                child: Text("${tabuleiro[2][3]}"),
                width: 50,
                height: 50,
              ),
              Container(
                color: Colors.white,
                child: Text("${tabuleiro[3][3]}"),
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
            Text("    "),
              Container(
                  child:

                  IconButton(
                    icon: Icon(Icons.arrow_upward), // Ícone de seta para frente
                    color: Colors.black,             // Cor do ícone
                    iconSize: 30,                    // Tamanho do ícone
                    onPressed: () {
                      // Ação quando o botão é pressionado

                    },
                  )
              ),
            ],
          ),
          Row(
            children: [
              Container(
                  child:
                  IconButton(
                    icon: Icon(Icons.arrow_back), // Ícone de seta para frente
                    color: Colors.black,             // Cor do ícone
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
                    color: Colors.black,             // Cor do ícone
                    iconSize: 30,                    // Tamanho do ícone
                    onPressed: () {
                      // Ação quando o botão é pressionado
                      setState(() {
                        widget.botaoParaBaixo();
                      });
                    },
                  )
              ),
              Container(
                  child:
                  IconButton(
                    icon: Icon(Icons.arrow_forward), // Ícone de seta para frente
                    color: Colors.black,             // Cor do ícone
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