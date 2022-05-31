import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recette/favoriteChangeNotifier.dart';
import 'package:recette/favoriteWidget.dart';
import 'package:recette/recipe.dart';

class RecipeScreen extends StatelessWidget {
  const RecipeScreen ({ Key? key,  required this.recipe}): super (key: key);
  final Recipe recipe;

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
          Expanded(child: Column (
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding:  EdgeInsets.only(bottom: 8),
                child:   Text(recipe.title,
                  style:  TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20
                  ),),
              ),

              Text(recipe.user,
                  style: TextStyle(
                      color: Colors.grey[500],fontSize: 16)
              )
            ],
          ),),

          FavoriteIconWidget(),
          FavoriteTextWidget()
        ],
      ),);

    Widget buttonSection = Container(
      padding: const EdgeInsets.all(8),
      child:Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children : [
            _buildButtonColumn(Colors.blue, Icons.comment, 'Comment'),
            _buildButtonColumn(Colors.blue, Icons.share, 'Share')
          ] ) ,
    ) ;
    Widget descriptionSection = Container(
      padding: const EdgeInsets.all(3),
      child:  Text(recipe.description,
          softWrap: true),

    );
    return ChangeNotifierProvider(
      create: (context)=> FavoriteChangeNotifier(recipe),
      child: Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: const Text('Mes recettes'),
        ),
        body: ListView(
          children: [
            // FadeInImage(placeholder: 'images/loader.gif', image: )

                Hero(
                  tag: "Image recipe" + recipe.title,
                  child: Image.asset(recipe.imageAsset,
                    width: 600,
                    height: 240,
                    fit: BoxFit.cover,
                  ),
                ),


            titleSection,
            buttonSection,
            descriptionSection

          ],
        ),

      ),
    );
  }
  Column _buildButtonColumn (Color color, IconData icon, String label){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.only(bottom: 8) ,
          child:   Icon (icon, color: color),
        ),

        Text(label,
          style: TextStyle (
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: color,
          ),)
      ],
    );
  }
}