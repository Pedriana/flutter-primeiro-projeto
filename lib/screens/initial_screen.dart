
import 'package:flutter/material.dart';
import 'package:primeiro_projeto/components/task.dart';

class InitialScreen extends StatefulWidget {
  
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  bool opacidade =true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: const Text("Tarefas"),
          ),
          body: AnimatedOpacity(
            opacity: opacidade ? 1 : 0,
            duration: const Duration(microseconds: 9000),
            child: ListView(
              children: const[
                Task("Aprender Flutter","assets/images/flutter.png",1),
                Task("Andar de Bike","assets/images/bike.jpg",2),
                Task("Meditar","assets/images/meditar.jpeg",5),
                Task("Andar de Bike","assets/images/ler.jpg",1),
                Task("Meditar","assets/images/jogar.jpg",1),
                SizedBox(height: 80,)
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              setState(() {
                opacidade = !opacidade;
              });
            },
            child: const Icon(Icons.remove_red_eye),
          ),
        );
  }
}