//utilizar o json to dart para gerar o código
//{
//     "name": "rex",
//     "Raca": "Vira lara",
//     "idade": "10 anos"
// } 


class Animal {
  String? name;
  String? raca;
  String? idade;

  Animal({this.name, this.raca, this.idade});

  Animal.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    raca = json['Raca'];
    idade = json['idade'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['Raca'] = raca;
    data['idade'] = idade;
    return data;
  }
}