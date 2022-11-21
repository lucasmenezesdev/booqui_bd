import 'package:booqui_bd/controllers/controller_autores_page.dart';
import 'package:booqui_bd/controllers/controller_obras_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class ObrasUpdate extends StatelessWidget {
  final String idObra;
  final String titulo;
  final String descricao;
  final String linguagem;
  ObrasUpdate({
    super.key,
    required this.idObra,
    required this.titulo,
    required this.descricao,
    required this.linguagem,
  });

  @override
  Widget build(BuildContext context) {
    final TextEditingController _tituloController =
        TextEditingController(text: titulo);
    final TextEditingController _descricaoController =
        TextEditingController(text: descricao);
    final TextEditingController _linguagemController =
        TextEditingController(text: linguagem);
    return GetBuilder<ControllerObrasPage>(
      init: ControllerObrasPage(),
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
                  'Atualizar dados da Obra',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 40,
                ),
                TextField(
                  controller: _tituloController,
                  decoration: InputDecoration(labelText: 'Título'),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: _descricaoController,
                  decoration: InputDecoration(labelText: 'Descrição'),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: _linguagemController,
                  decoration: InputDecoration(labelText: 'Linguagem'),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () => {
                          _.updateObra(
                            idObra,
                            _tituloController.text.trim(),
                            _descricaoController.text.trim(),
                            _linguagemController.text.trim(),
                          ),
                          _tituloController.clear(),
                          _descricaoController.clear(),
                          _linguagemController.clear(),
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
