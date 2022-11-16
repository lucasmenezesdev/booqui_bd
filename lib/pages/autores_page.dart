import 'package:booqui_app/controllers/controller_autores_page.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class AutoresPage extends StatefulWidget {
  const AutoresPage({super.key});

  @override
  State<AutoresPage> createState() => _AutoresPageState();
}

class _AutoresPageState extends State<AutoresPage> {
  final TextEditingController _nomeController = TextEditingController();
  final TextEditingController _sobrenomeController = TextEditingController();

  ControllerAutoresPage controller = ControllerAutoresPage();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.readData();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ControllerAutoresPage>(
      init: ControllerAutoresPage(),
      initState: (_) {},
      builder: (_) {
        return Scaffold(
            body: ListView.builder(
              itemCount: _.autoresList.length,
              itemBuilder: (context, index) => Dismissible(
                onDismissed: (direction) =>
                    _.deleteAutor(_.autoresList[index].id),
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
                child: _.autoresList.isNotEmpty
                    ? ListTile(
                        title: Text(_.autoresList[index].nome),
                        subtitle: Text(_.autoresList[index].sobrenome),
                      )
                    : Text('Sem autores'),
              ),
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            floatingActionButton: FloatingActionButton(
              onPressed: () => showModalBottomSheet(
                  context: context,
                  builder: (context) => Padding(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          children: [
                            TextField(controller: _nomeController),
                            TextField(controller: _sobrenomeController),
                            ElevatedButton(
                                onPressed: () => {
                                      _.addAutor(
                                        _nomeController.text.trim(),
                                        _sobrenomeController.text.trim(),
                                      ),
                                      _nomeController.clear(),
                                      _sobrenomeController.clear(),
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
