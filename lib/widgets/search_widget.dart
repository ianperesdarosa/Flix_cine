import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AnimSearchBar(
        width: 270,
        textController: textController,
        onSuffixTap: () {
          setState(() {
            textController.clear();
          });
        }, onSubmitted: (String ) {  }, 
      );
  }
}