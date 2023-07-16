import 'package:bms_task/image_details_view.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'image_data.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Imagedata> imageList = [];

  @override
  void initState() {
    super.initState();
    loadImages();
  }

  void loadImages() {
    List<Imagedata> loadedImages = imageInfoList.map((imageInfo) {
      return Imagedata(
          imagePath: imageInfo['imagePath'],
          date: imageInfo['date'],
          title: imageInfo['title'],
          subtitle: imageInfo['subtitle']);
    }).toList();

    setState(() {
      imageList = loadedImages;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        centerTitle: true,
        title: const Text("New Hip Hop Videos"),
        backgroundColor: Colors.grey,
      ),
      body: AlignedGridView.count(
        crossAxisCount: 3,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        itemCount: imageList.length,
        itemBuilder: (context, index) {
          final imageData = imageList[index];
          return InkWell(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => ImageDetails(imagedata: imageData),));
            },
            child: Card(
              color: Colors.black,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 150,
                      width: 130,
                      child: CachedNetworkImage(fit: BoxFit.cover, imageUrl: imageData.imagePath)),
                  const SizedBox(height: 10),
                  Text(imageData.title,style: const TextStyle(color: Colors.white),),
                  const SizedBox(height: 10),
                  Text(imageData.date,style: const TextStyle(color: Colors.white),),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class Imagedata {
  final String imagePath;
  final String date;
  String title;
  String subtitle;

  Imagedata(
      {required this.imagePath,
      required this.date,
      required this.title,
      required this.subtitle});
}
