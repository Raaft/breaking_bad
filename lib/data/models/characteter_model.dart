/*  class CharacterModel {
  int? charId;
  String? name;
  String? birthday;
  List<String>? occupation;
  String? img;
  String? status;
  String? nickname;
  List<int>? appearance;
  String? portrayed;
  String? category;
  List<int>? betterCallSaulAppearance;

  CharacterModel(
      {this.charId,
      required this.name,
      this.birthday,
      this.occupation,
      this.img,
      this.status,
      this.nickname,
      this.appearance,
      this.portrayed,
      this.category,
      this.betterCallSaulAppearance});

  CharacterModel.fromJson(Map<String, dynamic> json) {
    charId = json['char_id'];
    name = json['name'];
    birthday = json['birthday'];
    occupation = json['occupation'].cast<String>();
    img = json['img'];
    status = json['status'];
    nickname = json['nickname'];
    appearance = json['appearance'].cast<int>();
    portrayed = json['portrayed'];
    category = json['category'];
    betterCallSaulAppearance = json['better_call_saul_appearance'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['char_id'] = charId;
    data['name'] = name;
    data['birthday'] = birthday;
    data['occupation'] = occupation;
    data['img'] = img;
    data['status'] = status;
    data['nickname'] = nickname;
    data['appearance'] = appearance;
    data['portrayed'] = portrayed;
    data['category'] = category;
    data['better_call_saul_appearance'] = betterCallSaulAppearance;

    return data;
  }
}
  */


/*        class CharacterModel {
  int? charId;
  String? name;
  String ?birthday;
  List<String>? occupation;
  String ?img;
  String? status;
  List<int>? appearance;
  String ?nickname;
  String ?portrayed;

  CharacterModel(
      {this.charId,
        this.name,
        this.birthday,
        this.occupation,
        this.img,
        this.status,
        this.appearance,
        this.nickname,
        this.portrayed});

  CharacterModel.fromJson(Map<String, dynamic> json) {
    charId = json['char_id'];
    name = json['name'];
    birthday = json['birthday'];
    occupation = json['occupation'].cast<String>();
    img = json['img'];
    status = json['status'];
    appearance = json['appearance'].cast<int>();
    nickname = json['nickname'];
    portrayed = json['portrayed'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['char_id'] = charId;
    data['name'] = name;
    data['birthday'] = birthday;
    data['occupation'] = occupation;
    data['img'] = img;
    data['status'] = status;
    data['appearance'] = appearance;
    data['nickname'] = nickname;
    data['portrayed'] = portrayed;
    return data;
  }
}
         */

class CharactersModel {
late  int charId;
late  String name;
late  String birthday;
late List<String> occupation;
late  String img;
late  String status;
late  String nickname;
late  List<int> appearance;
late  String portrayed;
late  String category;
late  List <dynamic>betterCallSaulAppearance;



  CharactersModel.fromJson(Map<String, dynamic> json) {
    charId = json['char_id'];
    name = json['name'];
    birthday = json['birthday'];
    occupation = json['occupation'].cast<String>();
    img = json['img'];
    status = json['status'];
    nickname = json['nickname'];
    appearance = json['appearance'].cast<int>();
    portrayed = json['portrayed'];
    category = json['category'];
    betterCallSaulAppearance = json['better_call_saul_appearance'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['char_id'] = charId;
    data['name'] = name;
    data['birthday'] = birthday;
    data['occupation'] = occupation;
    data['img'] = img;
    data['status'] = status;
    data['nickname'] = nickname;
    data['appearance'] = appearance;
    data['portrayed'] = portrayed;
    data['category'] = category;
    return data;
  }
}


