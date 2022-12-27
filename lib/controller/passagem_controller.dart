import 'package:consumer/model/passagem.dart';
import 'package:consumer/repository/repository.dart';

class PassagemController {
  final Repository _repository;

  PassagemController(this._repository);

  Future<List<Passagem>> findAll(String origem, String destino, String ida) async{
    return _repository.findAll(origem, destino, ida);
  }
}