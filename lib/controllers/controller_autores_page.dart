import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:booqui_app/amplifyconfiguration.dart';
import 'package:booqui_app/models/Autor.dart';
import 'package:get/get.dart';

import '../models/ModelProvider.dart';

class ControllerAutoresPage extends GetxController {
  var autoresList = <Autor>[].obs;

  @override
  void onInit() {
    readData();
    super.onInit();
  }

  Future<void> readData() async {
    try {
      autoresList = RxList(await Amplify.DataStore.query(Autor.classType));
      update();
    } catch (e) {
      print(e);
    }
  }

  //Adicionar novo autor
  Future<void> addAutor(String nome, String sobrenome) async {
    try {
      Autor _newAutor = Autor(nome: nome, sobrenome: sobrenome);
      await Amplify.DataStore.save(_newAutor);
      readData();
    } on Exception catch (e) {
      print(e);
    }
  }

  //Atualizar autor
  Future<void> updateAutor(String id, String nome, String sobrenome) async {
    try {
      Autor _oldAutor = (await Amplify.DataStore.query(Autor.classType,
          where: Autor.ID.eq(id)))[0];
      Autor _newAutor =
          _oldAutor.copyWith(id: id, nome: nome, sobrenome: sobrenome);
      await Amplify.DataStore.save(_newAutor);
      readData();
    } on Exception catch (e) {
      print(e);
    }
  }

  //Deletar Autor
  Future<void> deleteAutor(String? id) async {
    (await Amplify.DataStore.query(Autor.classType, where: Autor.ID.eq(id)))
        .forEach((element) async {
      try {
        await Amplify.DataStore.delete(element);
      } catch (e) {
        print(e);
      }
    });
    readData();
  }
}
