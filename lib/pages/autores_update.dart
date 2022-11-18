import 'package:booqui_bd/controllers/controller_autores_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class AutoresUpdate extends StatelessWidget {
  final String idAutor;
  final String nome;
  final String sobrenome;
  AutoresUpdate(
      {super.key,
      required this.idAutor,
      required this.nome,
      required this.sobrenome});

  @override
  Widget build(BuildContext context) {
    final TextEditingController _nomeController =
        TextEditingController(text: nome);
    final TextEditingController _sobrenomeController =
        TextEditingController(text: sobrenome);
    return GetBuilder<ControllerAutoresPage>(
      init: ControllerAutoresPage(),
      initState: (_) {},
      builder: (_) {
        return Scaffold(
          appBar: AppBar(),
          body: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Atualizar dados do Autor',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 40,
                ),
                TextField(controller: _nomeController),
                SizedBox(
                  height: 10,
                ),
                TextField(controller: _sobrenomeController),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () => {
                          _.updateAutor(
                            idAutor,
                            _nomeController.text.trim(),
                            _sobrenomeController.text.trim(),
                          ),
                          _nomeController.clear(),
                          _sobrenomeController.clear(),
                          Navigator.pop(context),
                        },
                    child: Text('Atualizar'))
              ],
            ),
          ),
        );
      },
    );
  }
}
