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

List<Song> songList = [
  Song(name: "Oi", artist: "Lagum"),
  Song(name: "O Que é Que Tem", artist: "Jorge e Mateus"),
  Song(name: "As It Was", artist: "Harry Styles"),
  Song(name: "Steal My Girl", artist: "One Direction" ),
];

class _ListPageState extends State<ListPage>{

  TextEditingController nameController = TextEditingController();
  TextEditingController artistController = TextEditingController();

  String initialNameValue = '';
    String initialArtistValue = '';

  updateValue({required String nameValue, required String artistValue}){
    setState(() {
      initialNameValue = nameValue;
      initialArtistValue = artistValue;
    });
  }

  cleanValue(){
     setState(() {
      initialNameValue = '';
      initialArtistValue = '';
    });
  }

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          left: AppPaddings.borderPadding,
          right: AppPaddings.borderPadding,
          top: AppPaddings.topPadding,
        ),
        child: Column(children: [
          IsabelaForm(
            label:'Nome da música',
            userInputController: nameController,
          ),
          const SizedBox(height: 15),
          IsabelaForm(
            label:'Nome do artista',
            userInputController: artistController,
            onEditingComplete: (){
               updateValue(nameValue: nameController.text, artistValue: artistController.text);
            },
            ),
            const SizedBox(height: 15),
            SingleChildScrollView(
              child: Column(children: [
                ListView.separated(
                  separatorBuilder: (BuildContext context, int index){
                    return const SizedBox(height: 15,);
                  },
                  shrinkWrap: true,
                  itemCount: songList.length,
                  itemBuilder: (context, index){
                    var listItem = songList[index];
                    return MouseRegion(
                      cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      onTap: (){print(listItem.name);},
                      child: IsabelaCard(
                    leftText: listItem.name,
                    rightText: " - "+listItem.artist,
                  )
                  )
                );
                })
              ],)
            )
        ]
      ),
    )
  );
  }
}