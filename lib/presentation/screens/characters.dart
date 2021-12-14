import 'package:breakingbad/business/cubit/character_cubit.dart';
import 'package:breakingbad/const/my_color.dart';
import 'package:breakingbad/data/models/characteter_model.dart';
import 'package:breakingbad/presentation/widget/charchter_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// ignore: must_be_immutable
class CharactersScreens extends StatelessWidget {
  late List<CharactersModel> characterList;
  late List<CharactersModel> searchedCharacterList;
  bool isSearched=false;
  TextEditingController searchController=TextEditingController();

  CharactersScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColor.myYellow,
        title: const Text("Breaking Bad"),
      ),
      body: buildBloc(),
    );
  }

  BlocConsumer<CharacterCubit, CharacterState> buildBloc() {
    return BlocConsumer<CharacterCubit, CharacterState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        if (state is CharacterLoaded) {
          characterList = state.characters;
          return buildLoadedListWidget();
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }

  Widget buildLoadedListWidget() {
    return SingleChildScrollView(
      child: Container(
        color: MyColor.myGray,
        child: Column(
          children: [
            GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 2 / 3,
                  crossAxisSpacing: 1,
                  mainAxisSpacing: 1),
              shrinkWrap: true,
              physics: const ClampingScrollPhysics(),
              itemCount: characterList.length,
              itemBuilder: (context, index) => CharacterItem(
                charactersItem: characterList[index],
              ),
            )
          ],
        ),
      ),
    );
  }
}
