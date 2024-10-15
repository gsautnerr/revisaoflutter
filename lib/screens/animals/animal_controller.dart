import 'package:get/get.dart';
import 'package:revisaoflutter/database/app.database.dart';
import 'package:revisaoflutter/domain/animal.dart';

class AnimalController extends GetxController{

    //variavel reativa
    final Rx<bool> _status = Rx(false);
    AnimalDataBase animalDataBase = AnimalDataBase.instance;

    AnimalController();

    //metodo para salvar o animal na base
    saveAnimal(Animal value) async{
    await animalDataBase.insert(value);
    _status.value = true;
    }


}