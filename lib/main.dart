import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(const Aplicacao());

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

//essa classe representa o widged onde vamos montar a nossa tela
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Home"),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //SizedBox vai forçar o Container, que está dentro
                  //dele a ter o tamanho 200x200
                  SizedBox(
                    width: 100,
                    height: 100,
                    child: Container(
                      //através do BoxDecoration, podemos customizar o
                      //aspecto visual de um Container
                      decoration: BoxDecoration(
                        color: geraCorAleatoria(),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 100,
                    height: 100,
                    child: Container(
                      //através do BoxDecoration, podemos customizar o
                      //aspecto visual de um Container
                      decoration: BoxDecoration(
                        color: geraCorAleatoria(),
                      ),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 100,
                    height: 100,
                    child: Container(
                      //através do BoxDecoration, podemos customizar o
                      //aspecto visual de um Container
                      decoration: BoxDecoration(
                        color: geraCorAleatoria(),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 100,
                    height: 100,
                    child: Container(
                      //através do BoxDecoration, podemos customizar o
                      //aspecto visual de um Container
                      decoration: BoxDecoration(
                        color: geraCorAleatoria(),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 100,
                    height: 100,
                    child: Container(
                      //através do BoxDecoration, podemos customizar o
                      //aspecto visual de um Container
                      decoration: BoxDecoration(
                        color: geraCorAleatoria(),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 100,
                    height: 100,
                    child: Container(
                      //através do BoxDecoration, podemos customizar o
                      //aspecto visual de um Container
                      decoration: BoxDecoration(
                        color: geraCorAleatoria(),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }

  Widget caixa() {
    return SizedBox(
      width: 120,
      height: 120,
      child: Container(
        decoration: BoxDecoration(
          gradient: linearGradient(
            colors: [
              getColor(),
              getColor(),
            ],
            begin: Aligment.bottomLeft,
            end: Aligment.topRight,
          ),
        ),
      ),
    );
  }

  Widget linha(List<Widget> items) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: items,
    );
  }

  Widget duasCaixas() {
    return linha(
      [
        caixa(),
        caixa(),
      ],
    );
  }

  Widget tresCaixas() {
    return Linha(
      [
        caixa(),
        caixa(),
        caixa(),
      ],
    );
  }
}

Color geraCorAleatoria() {
  final random = Random();

  return Color.fromARGB(
    255,
    random.nextInt(256),
    random.nextInt(256),
    random.nextInt(256),
  );
}

//todo projeto em dart começa a execução pelo método main
void main() => runApp(const Aplicacao());
