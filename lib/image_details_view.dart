
import 'package:bms_task/home_page.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ImageDetails extends StatefulWidget {
  final  Imagedata imagedata;
  const ImageDetails({super.key, required this.imagedata});

  @override
  State<ImageDetails> createState() => _ImageDetailsState();
}

class _ImageDetailsState extends State<ImageDetails> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black12,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 150,
                      width: 150,
                      child: CachedNetworkImage(imageUrl:widget.imagedata.imagePath,fit: BoxFit.cover,),
                    ),
                    const SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(widget.imagedata.title,style: TextStyle(color: Colors.white,fontSize: 20),),
                        Text(widget.imagedata.date,style: TextStyle(color: Colors.white,fontSize: 20),),
                      ],
                    ),

                  ],
                ),
                const SizedBox(height: 40,),

                Container(
                  height: 60,
                  color: Colors.blueGrey,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(FontAwesomeIcons.facebook,color: Colors.white,),
                      Icon(FontAwesomeIcons.instagram,color: Colors.white,),
                      Icon(FontAwesomeIcons.twitter,color: Colors.white,),
                      Icon(FontAwesomeIcons.share,color: Colors.white,),

                    ],
                  ),
                ),
                const SizedBox(height:20,),
                Text(widget.imagedata.title,style: TextStyle(color: Colors.white,fontSize: 20),),
                const SizedBox(height: 30,),
                Text(widget.imagedata.subtitle,style: TextStyle(color: Colors.white,fontSize: 16,),),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
