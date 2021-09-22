import 'dart:convert';

class Perguntas {
    String descricao;
    int status;
    int sequencia;
    int tipoDados;
    int tipoPergunta;
    String observacao;
    int questionarioId;
    String questionario;
    int id;

  Perguntas({
    required this.descricao,
    required this.status,
    required this.sequencia,
    required this.tipoDados,
    required this.tipoPergunta,
    required this.observacao,
    required this.questionarioId,
    required this.questionario,
    required this.id,
  });

  factory Perguntas.fromMap(Map<String, dynamic> map) {
    return Perguntas(
      descricao: map['descricao'],
      status: map['status'],
      sequencia: map['sequencia'],
      tipoDados: map['tipoDados'],
      tipoPergunta: map['tipoPergunta'],
      observacao: map['observacao'],
      questionarioId: map['questionarioId'],
      questionario: map['questionario'],
      id: map['id'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'descricao': descricao,
      'status': status,
      'sequencia': sequencia,
      'tipoDados': tipoDados,
      'tipoPergunta': tipoPergunta,
      'observacao': observacao,
      'questionarioId': questionarioId,
      'questionario': questionario,
      'id': id,
    };
  }

  String toJson() => json.encode(toMap());

  factory Perguntas.fromJson(String source) => Perguntas.fromMap(json.decode(source));
}
