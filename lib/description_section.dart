import 'package:flutter/material.dart';

class DescriptionSection extends StatelessWidget{

  String namePlace;
  int stars;
  String descriptionPlace;

  DescriptionSection(this.namePlace, this.stars, this.descriptionPlace);

  @override
  Widget build(BuildContext context) {

    final star_half =  Container(
      margin: EdgeInsets.only(
          top: 280.0,
          right: 3.0
      ),

      child: Icon(
        Icons.star_half,
        color:Colors.amber,
      ),
    );

    final star_border =  Container(
      margin: EdgeInsets.only(
          top: 280.0,
          right: 3.0
      ),

      child: Icon(
        Icons.star_border,
        color:Colors.amber,
      ),
    );

    final star = Container(
      margin: EdgeInsets.only(
        top: 280.0,
        right: 3.0
      ),

      child: Icon(
        Icons.star,
        color:Colors.amber,
      ),
    );

    final description = Container(
      margin: EdgeInsets.only(
        top: 15.0,
        right: 20.0,
        left: 20.0,
        bottom: 20.0,
      ),
      child: Text(
        descriptionPlace,
        style: TextStyle(
          fontSize: 14.0,
          color: Colors.black54,
          fontWeight: FontWeight.w300
        ),
      )
    );

    final title_stars = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            top: 280.0,
            left: 20.0,
            right: 20.0
          ),
          child: Text(
            namePlace,
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w900
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: <Widget>[
            star,
            star,
            star_half,
            star_border,
          ],
        ),
      ],
    );

    return Column(
      children: <Widget>[
        title_stars,
        description
      ],
    );
  }

}