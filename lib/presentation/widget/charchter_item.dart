import 'package:breakingbad/const/my_color.dart';
import 'package:breakingbad/data/models/characteter_model.dart';
import 'package:flutter/material.dart';

class CharacterItem extends StatelessWidget {
  const CharacterItem({Key? key, required this.charactersItem})
      : super(key: key);
  final CharactersModel? charactersItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: MyColor.myWhite,
        borderRadius: BorderRadius.circular(8),
      ),
      child: GridTile(
        child: Container(
          color: MyColor.myGray,
          child: charactersItem!.img.isNotEmpty
              ? FadeInImage.assetNetwork(
                  width: double.infinity,
                  placeholder: "assets/images/loading.gif",
                  image: charactersItem!.img,
                  fit: BoxFit.cover,
                )
              : Image.asset("assets/images/loading.gif"),
        ),
        footer: Container(
          width: double.infinity,
          color: Colors.black38,
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Text(
            charactersItem!.name.toString(),
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              height: 1.3,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
    );
  }
}
