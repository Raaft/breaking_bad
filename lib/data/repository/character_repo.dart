import 'package:breakingbad/data/models/characteter_model.dart';
import 'package:breakingbad/data/web_services/character_web_servise.dart';

class CharacterRepo {
  final CharacterWebServices characterWebServices;

  CharacterRepo(this.characterWebServices);

  Future<List<CharactersModel>> getAllCharacter() async {
    final characters = await characterWebServices.getAllCharacter();
    return characters
        .map((charactersModel) => CharactersModel.fromJson(charactersModel))
        .toList();
  }
}
