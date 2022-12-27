import 'package:consumer/model/passagem.dart';

abstract class Repository {
  Future <List<Passagem>> findAll(String origem, String destino, String ida);
  // Future <String> patchCompleted(Produto produto);
  // Future <String> putCompleted(Produto produto);
  // Future <String> delete(Produto produto);
  // Future <String> save(Produto produto);

}