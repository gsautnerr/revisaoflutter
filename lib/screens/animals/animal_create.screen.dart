//utilizar o st + auto complete para gerar classe

import 'package:flutter/material.dart';
import 'package:revisaoflutter/domain/animal.dart';
import 'package:revisaoflutter/screens/animals/animal_controller.dart';
import 'package:revisaoflutter/util/snippets.dart';

class AnimalCreateScreen extends StatefulWidget {
  const AnimalCreateScreen({super.key});

  @override
  State<AnimalCreateScreen> createState() => _AnimalCreateScreenState();
}

class _AnimalCreateScreenState extends State<AnimalCreateScreen> {
  //mesmo TextEditing do login
  final TextEditingController _nomeController = TextEditingController();
  final TextEditingController _racaController = TextEditingController();
  final TextEditingController _idadeController = TextEditingController();
  late AnimalController _animalController;

      @override
  void initState() {
    _animalController = AnimalController();
    super.initState();
  }


     // definindo o método on pressed

      
      _onPressed(){
        final animal = Animal(
          name : _nomeController.text,
          idade: _idadeController.text,
          raca: _racaController.text
        );



      }

  @override
  Widget build(BuildContext context) {
    //retornar scaffold
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cadastro da Pasta"),
      ),

      body: Column(
        children: [

          //mesmo padding da login screen

          Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: TextFormField(
                controller: _nomeController,
                decoration: inputDecoration(label: "Informe o nome"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: TextFormField(
                controller: _racaController,
                decoration: inputDecoration(label: "Informe a raça"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: TextFormField(
                controller: _idadeController,
                decoration: inputDecoration(label: "Informe a idade"),
              ),
            ),

            //mesmo botao do login screen


            ElevatedButton(onPressed: _onPressed, child: const Text("Entrar")),

        ],
      ),




    );
  }
}