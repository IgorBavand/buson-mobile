class Passagem {
  String? qdtPoltronasDisponiveis;
  String? tipo;
  String? empresa;
  String? horarioEmbarque;
  String? duracao;
  String? horarioChegada;
  String? origem;
  String? lugarOrigem;
  String? destino;
  String? lugarDestino;
  String? preco;
  Null? tempoParaEncerrarVendas;

  Passagem(
      {this.qdtPoltronasDisponiveis,
        this.tipo,
        this.empresa,
        this.horarioEmbarque,
        this.duracao,
        this.horarioChegada,
        this.origem,
        this.lugarOrigem,
        this.destino,
        this.lugarDestino,
        this.preco,
        this.tempoParaEncerrarVendas});

  Passagem.fromJson(Map<String, dynamic> json) {
    qdtPoltronasDisponiveis = json['qdtPoltronasDisponiveis'];
    tipo = json['tipo'];
    empresa = json['empresa'];
    horarioEmbarque = json['horarioEmbarque'];
    duracao = json['duracao'];
    horarioChegada = json['horarioChegada'];
    origem = json['origem'];
    lugarOrigem = json['lugarOrigem'];
    destino = json['destino'];
    lugarDestino = json['lugarDestino'];
    preco = json['preco'];
    tempoParaEncerrarVendas = json['tempoParaEncerrarVendas'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['qdtPoltronasDisponiveis'] = this.qdtPoltronasDisponiveis;
    data['tipo'] = this.tipo;
    data['empresa'] = this.empresa;
    data['horarioEmbarque'] = this.horarioEmbarque;
    data['duracao'] = this.duracao;
    data['horarioChegada'] = this.horarioChegada;
    data['origem'] = this.origem;
    data['lugarOrigem'] = this.lugarOrigem;
    data['destino'] = this.destino;
    data['lugarDestino'] = this.lugarDestino;
    data['preco'] = this.preco;
    data['tempoParaEncerrarVendas'] = this.tempoParaEncerrarVendas;
    return data;
  }
}