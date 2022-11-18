import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:get/get.dart';

import '../models/Autor.dart';
import '../models/Obra.dart';

class ControllerObrasPage extends GetxController {
  var obrasList = <Obra>[].obs;
  String currentUser = '';

  @override
  void onInit() {
    readData();
    super.onInit();
  }

  Future<void> readData() async {
    try {
      obrasList = RxList(await Amplify.DataStore.query(Obra.classType));
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
