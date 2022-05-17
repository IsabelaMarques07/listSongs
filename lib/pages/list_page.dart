import 'package:flutter/material.dart';
import 'package:isabela_sir/pages/components/isabela_card.dart';
import 'package:isabela_sir/pages/components/isabela_form.dart';
import 'package:isabela_sir/pages/model/song_model.dart';
import 'package:isabela_sir/utils/paddings.dart';

class ListPage extends StatefulWidget{
  @override 
  State<StatefulWidget> createState(){
    return _ListPageState();
  }
}
class _ListPageState extends State<ListPage>{

  List<Song> songList = [
    Song(name: "Veja Baby", artist: "Lagum"),
    Song(name: "As It Was", artist: "Harry Styles"),
    Song(name: "O Que é Que Tem", artist: "Jorge e Mateus"),
    Song(name: "Steal My Girl", artist: "One Direction" ),
  ];

  TextEditingController nameController = TextEditingController();
  TextEditingController artistController = TextEditingController();
  FocusNode nameFocus = FocusNode();
  FocusNode artistFocus = FocusNode();

  addNewSong({required String songName, required String songArtist}){
    setState(() {
      songList.insert(0, Song(name: songName, artist: songArtist));
    });
  }

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      body: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(
          left: AppPaddings.borderPadding,
          right: AppPaddings.borderPadding,
          top: AppPaddings.topPadding,
        ),
        child: Column(children: [
          IsabelaForm(
            label:'Nome da música',
            focusNode: nameFocus,
            userInputController: nameController,
            onEditingComplete: (){
              artistFocus.nextFocus();
            },
          ),
          const SizedBox(height: 15),
          IsabelaForm(
            label:'Nome do artista',
            focusNode: artistFocus,
            userInputController: artistController
            ),
          const SizedBox(height: 45),
          Column(children: [
            ListView.separated(
              separatorBuilder: (BuildContext context, int index){
                return const SizedBox(height: 15);
              },
              shrinkWrap: true,
              itemCount: songList.length,
              itemBuilder: (context, index){
                var listItem = songList[index];
                return IsabelaCard(
                leftText: listItem.name,
                rightText: " - "+listItem.artist,
              );
            })
          ],),
        ]
      ),
    )
  ),

  floatingActionButton: FloatingActionButton(
        onPressed: () {
           addNewSong(songName: nameController.text, songArtist: artistController.text);
        },
        backgroundColor:  Color.fromARGB(255, 77, 63, 202),
        child: const Icon(Icons.add),
      ),
  );
  }
}