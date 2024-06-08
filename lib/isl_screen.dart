import 'package:flutter/material.dart';
import 'isl_container.dart';

class IslGrid extends StatefulWidget {
  const IslGrid({super.key});

  @override
  State<IslGrid> createState() => _IslGridState();
}

class _IslGridState extends State<IslGrid> {

  List plname = [
    "Daman-e-Koh",
    "Pakistan Monument",
    "Rawal Lake",
    "Saidpur Village",
    "Centaurus Mall",
    "Margalla Hills National Park"
  ];

  List gridImages =[
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSmUtdxXBklqub16sjijr0OoLTBEFqOWPMc0g&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxEcF772heCamtZp_H-arqqfYzyjmtEwCpCQ&s",
    "data:image/jpeg;base64,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",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQbPxqYBS9XR25GYVSMoeh0ydgrn-fC-yOZ8g&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_SSkl-dhdtWcEZztoGbzoi9-o2NuRomLJpA&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdbJhkF5yF9_TdpR3zCfQMMExfTfPg4pUuKA&s",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  Colors.grey.withOpacity(0.5),
        title: Center(child: const Text("Islamabad Popular Places")),
      ),
      body:  Container(

        margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        child: GridView.count(crossAxisCount: 2,
          childAspectRatio: 160/250,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: List.generate(gridImages.length, (index) => islamabadgrid(
            name: plname[index],
            image: gridImages[index],
          )),
        ),
      ),


    );
  }
}

