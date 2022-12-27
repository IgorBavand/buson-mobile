import 'package:consumer/model/passagem.dart';
import 'package:consumer/repository/repository.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class PassagensRepository implements Repository{

  //String dataUrl = "http://localhost:8080/";

  @override
  Future<List<Passagem>> findAll(String origem, String destino, String ida) async{
    List<Passagem> passagens = [];
    var url = Uri.parse("http://172.26.0.2:8080/buson?origem=$origem&destino=$destino&ida=$ida");
    print(url);
    var response  = await http.get(url);
    var body = json.decode(response.body);

    for(var i = 0; i < body.length; i++){
      passagens.add(Passagem.fromJson(body[i]));
    }

    return passagens;

  }

  @override
  Future<String> delete(Passagem produto) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<String> patchCompleted(Passagem produto) {
    // TODO: implement patchCompleted
    throw UnimplementedError();
  }

  @override
  Future<String> putCompleted(Passagem produto) {
    // TODO: implement putCompleted
    throw UnimplementedError();
  }

  @override
  Future<String> save(Passagem produto) {
    // TODO: implement save
    throw UnimplementedError();
  }


}