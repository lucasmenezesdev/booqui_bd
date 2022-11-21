import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:booqui_bd/models/ModelProvider.dart';
import 'package:get/get.dart';

import '../models/Autor.dart';
import '../models/Obra.dart';

class ControllerObrasPage extends GetxController {
  var obrasList = <Obra>[].obs;
  // var autoresList = <Autor>[].obs;
  String currentUser = '';

  @override
  void onInit() {
    readData();
    super.onInit();
  }

  Future<void> readData() async {
    try {
      obrasList = RxList(await Amplify.DataStore.query(Obra.classType));
      // autoresList = RxList(await Amplify.DataStore.query(Autor.classType));
    } catch (e) {
      print(e);
    }
  }

  Future<void> addObra(
      String titulo, String descricao, String linguagem) async {
    try {
      Obra _newObra = Obra(
        titulo: titulo,
        descricao: descricao,
        linguagem: linguagem,
        curtidas: 0,
        downloads: 0,
        numComentarios: 0,
      );
      await Amplify.DataStore.save(_newObra);
      readData();

      // String idObra = obrasList[obrasList.length - 1].id;

      // ObraAutor _newObraAutor = ObraAutor(obra: idObra, autor: idAutor);
    } on Exception catch (e) {
      print(e);
    }
  }

  Future<void> updateObra(
      String id, String titulo, String descricao, String linguagem) async {
    try {
      Obra _oldObra = (await Amplify.DataStore.query(Obra.classType,
          where: Autor.ID.eq(id)))[0];
      Obra _newObra = _oldObra.copyWith(
          titulo: titulo, descricao: descricao, linguagem: linguagem);
      await Amplify.DataStore.save(_newObra);
      readData();
    } catch (e) {
      print(e);
    }
  }

  Future<void> deleteObra(String? id) async {
    (await Amplify.DataStore.query(Obra.classType, where: Autor.ID.eq(id)))
        .forEach(
      (element) async {
        try {
          await Amplify.DataStore.delete(element);
        } catch (e) {
          print(e);
        }
      },
    );
    readData();
  }
}
