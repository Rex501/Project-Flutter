import 'package:flutter/material.dart';
import 'package:proyecto_places/description_place.dart';
import 'package:proyecto_places/review.dart';

class MyHome extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    final descriptionPlace = Container
    (
      margin: EdgeInsets.only
      (
        top: 250,
        left: 30,
        right: 30
      ),
      child: DescriptionPlace("Uyuni", 4, "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
    );

    final review = Container
      (
      margin: EdgeInsets.only
        (
          top: 250,
          left: 30,
          right: 30
      ),
      height: 80,

      child: Review("assets/images/persona 1.jpg","Laura Leon", "1 reviews - 4 photos", 2, "Muy buen lugar para visitar ")
    );


    return Scaffold
    (
      appBar: AppBar
      (
        title: Text
        (
          "My Places"
        ),
      ),
      body: Stack
      (
        children: <Widget>
        [
          review
        ],
      ),
    );
  }
}