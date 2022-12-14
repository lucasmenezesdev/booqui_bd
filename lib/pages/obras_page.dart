import 'package:booqui_bd/pages/obras_update.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/controller_autores_page.dart';
import '../controllers/controller_obras_page.dart';

class ObrasPage extends StatefulWidget {
  const ObrasPage({super.key});

  @override
  State<ObrasPage> createState() => _ObrasPageState();
}

class _ObrasPageState extends State<ObrasPage> {
  final TextEditingController _tituloController = TextEditingController();
  final TextEditingController _descricaoController = TextEditingController();
  final TextEditingController _linguagemController = TextEditingController();

  ControllerObrasPage controller = ControllerObrasPage();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.readData();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ControllerObrasPage>(
      init: ControllerObrasPage(),
      initState: (_) {},
      builder: (_) {
        return Scaffold(
            body: ListView.builder(
              itemCount: _.obrasList.length,
              itemBuilder: (context, index) => Dismissible(
                onDismissed: (direction) => _.deleteObra(_.obrasList[index].id),
                background: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Icon(
                      Icons.delete,
                      color: Colors.red,
                    )
                  ],
                ),
                key: UniqueKey(), //ValueKey<String>(_.autoresList[index].id),
                child: _.obrasList.isNotEmpty
                    ? Card(
                        child: ListTile(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ObrasUpdate(
                                      idObra: _.obrasList[index].id,
                                      titulo: _.obrasList[index].titulo,
                                      descricao: _.obrasList[index].descricao,
                                      linguagem: _.obrasList[index].linguagem)),
                            );
                          },
                          title: Text(_.obrasList[index].titulo),
                        ),
                      )
                    : Text('Sem obras'),
              ),
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            floatingActionButton: FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: () => showModalBottomSheet(
                  context: context,
                  builder: (context) => Padding(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          children: [
                            TextField(
                              controller: _tituloController,
                              decoration: InputDecoration(labelText: 'T??tulo'),
                            ),
                            TextField(
                              controller: _descricaoController,
                              decoration:
                                  InputDecoration(labelText: 'Descri????o'),
                            ),
                            TextField(
                              controller: _linguagemController,
                              decoration:
                                  InputDecoration(labelText: 'Linguagem'),
                            ),
                            ElevatedButton(
                                onPressed: () => {
                                      _.addObra(
                                        _tituloController.text.trim(),
                                        _descricaoController.text.trim(),
                                        _linguagemController.text.trim(),
                                      ),
                                      _tituloController.clear(),
                                      _descricaoController.clear(),
                                      _linguagemController.clear(),
                                      Navigator.pop(context),
                                    },
                                child: Text('Cadastrar'))
                          ],
                        ),
                      )),
            ));
      },
    );
  }
}
