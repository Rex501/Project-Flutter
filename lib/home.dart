import 'package:flutter/material.dart';
import 'package:proyecto_places/card_image.dart';
import 'package:proyecto_places/description_place.dart';
import 'package:proyecto_places/gradient_back.dart';
import 'package:proyecto_places/home_app_bar.dart';
import 'package:proyecto_places/review.dart';
import 'package:proyecto_places/review_list.dart';

class MyHome extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    final descriptionPlace = Container
      (
      margin: EdgeInsets.only
        (
          top: 300,
          left: 30,
          right: 30
      ),
      child: DescriptionPlace("Uyuni", 4, "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
    );

    final reviewList = Container
      (
        margin: EdgeInsets.only
          (
            top: 20,
            left: 30,
            right: 30
        ),

        child: ReviewList ()
    );

    //listView
    final listView = ListView
      (
      children: <Widget>
      [
        descriptionPlace,
        reviewList
      ],
    );


    return Scaffold
      (
      body: Stack
        (
        children: <Widget>
        [
          listView,
          HomeAppBar
          (
            "Popular"
          ) //HomeAppBar("Popular")
        ],
      ),
    );
  }
}