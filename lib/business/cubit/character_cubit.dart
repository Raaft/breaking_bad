import 'package:bloc/bloc.dart';
import 'package:breakingbad/data/models/characteter_model.dart';
import 'package:breakingbad/data/repository/character_repo.dart';

part 'character_state.dart';

class CharacterCubit extends Cubit<CharacterState> {
  final CharacterRepo characterRepo;

  CharacterCubit(this.characterRepo) : super(CharacterInitial());

   List<CharactersModel>? charactersList;

  List<CharactersModel>? getAllCharacters() {
    characterRepo.getAllCharacter().then((value) {
      charactersList = value;
      emit(CharacterLoaded(value));
    });
    return charactersList;
  }
}
