import 'package:flutter/material.dart';
import 'package:recette/recipeBox.dart';
import 'RecipeScreen.dart';
import 'recipe.dart';
import 'package:hive_flutter/hive_flutter.dart';


class RecipeListScreen extends StatefulWidget{
  const RecipeListScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return RecipeListScreenState();
  }
  
}

class RecipeListScreenState extends State<RecipeListScreen> {

  // final List<Recipe> recipes = [
  //   Recipe(
  //     'Pizza facile',
  //     'Par Gracieux Siva',
  //     'images/pizza.jpeg',
  //     'Faire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\n Faire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau Faire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\n\nFaire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\nFaire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\n Faire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau Faire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\n\nFaire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\nFaire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\n Faire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau Faire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\n\nFaire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau',
  //     false,
  //     50),
  //
  //   Recipe(
  //       'Burger maison',
  //       'Par Patience Siva',
  //       'images/burger.jpeg',
  //       'Pelez loignon rouge puis emiler-le. Rincer et essorer la roquette. \n\net Faire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\n Faire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau Faire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\n\nFaire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\nFaire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\n Faire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau Faire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\n\nFaire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\nFaire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\n Faire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau Faire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\n\nFaire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau',
  //       true,
  //       33),
  //   Recipe(
  //       'Crepe comme chez nous',
  //       'Par Orlando Brithon',
  //       'images/crepe.jpeg',
  //       'Verser la farine dans un saladier, creusez un puits. Casse  \n\net Faire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\n Faire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau Faire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\n\nFaire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\nFaire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\n Faire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau Faire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\n\nFaire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\nFaire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\n Faire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau Faire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\n\nFaire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau',
  //       true,
  //       13),
  //   Recipe(
  //       'cake sucree',
  //       'Par Smith Hugo',
  //       'images/cake.jpeg',
  //       'Travailler les beurre avec du sucre en poudre \n\net Faire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\n Faire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau Faire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\n\nFaire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\nFaire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\n Faire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau Faire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\n\nFaire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\nFaire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\n Faire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau Faire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\n\nFaire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau',
  //       true,
  //       18),
  //   Recipe(
  //       "Oreilles d'aman",
  //       'Par Gilbert S',
  //       'images/oreilles.jpeg',
  //       'Dans un saladier, battre loeuf avec le sucre et le sucre vanile \n\net Faire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\n Faire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau Faire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\n\nFaire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\nFaire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\n Faire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau Faire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\n\nFaire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\nFaire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\n Faire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau Faire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\n\nFaire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau',
  //       true,
  //       55),
  //   Recipe(
  //       "Donuts",
  //       'Par Gilbert S',
  //       'images/donut.jpeg',
  //       'Dans un saladier, battre loeuf avec le sucre et le sucre vanile \n\net Faire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\n Faire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau Faire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\n\nFaire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\nFaire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\n Faire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau Faire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\n\nFaire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\nFaire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\n Faire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau Faire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\n\nFaire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau',
  //       true,
  //       55),
  //
  // ];






  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Mes recettes'),
      ),

      body: ValueListenableBuilder(
        valueListenable: RecipeBox.box!.listenable(),
        builder: (context, Box items,_ ) {
          List<String> keys = items.keys.cast<String>().toList();
          print(keys);
            return ListView.builder(
              itemCount: keys.length,
              itemBuilder: (context, index){
                final recipe = items.get(keys)[index];
                return Dismissible(key: Key(recipe.title),
                    onDismissed: (direction){
                      setState((){
                        RecipeBox.box?.delete(recipe.key());
                      });
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("${recipe.title} Deleted"),));
                    },
                    background: Container(color: Colors.red[500]),
                    child: RecipeItemWidget(recipe: recipe));
              },
            );

          }
          // else {
          //   return Center(child: CircularProgressIndicator ());
          // }

      ),

      // ListView(
      //   children: [
      //
      //     RecipeItemWidget (recipe: Recipe(
      //         'Pizza facile',
      //         'Graceux Siva',
      //         'images/pizza.jpeg',
      //         'Faire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\n Faire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau Faire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\n\nFaire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\nFaire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\n Faire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau Faire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\n\nFaire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\nFaire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\n Faire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau Faire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\n\nFaire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau',
      //         //is favorite
      //         true,
      //         //favorited count
      //         50)),
      //     RecipeItemWidget (recipe: Recipe(
      //         'Burger Maison',
      //         'Patience Siva',
      //         'images/burger.jpeg',
      //         'Faire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\n Faire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau Faire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\n\nFaire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\nFaire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\n Faire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau Faire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\n\nFaire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\nFaire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\n Faire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau Faire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\n\nFaire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau',
      //         //is favorite
      //         true,
      //         //favorited count
      //         50)),
      //   ],
      // ),
    );
  }

}

class RecipeItemWidget extends StatelessWidget{
  const RecipeItemWidget({Key? key, required this.recipe}): super (key: key);
  final Recipe recipe;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
return GestureDetector(
  onTap: (){
    // Navigator.pushNamed(context, '/recipe',
    // arguments: recipe,);

    Navigator.push(context,
        PageRouteBuilder(
            pageBuilder : (context,animation, secondaryAnimation)=> RecipeScreen (recipe: recipe),
            transitionsBuilder: (context,animation, secondaryAnimation, child) {
              animation=CurvedAnimation(curve: Curves.ease, parent: animation);
              return FadeTransition(
                opacity: animation,
                child: child,
              );



              //ANIMATION D'APARUTION D'IMAGE
              // var begin = Offset(0.0, 1.0);
              // var end = Offset.zero;
              // var curve = Curves.ease;
              // var tween= Tween(begin: begin, end: end).chain(CurveTween(curve:curve));
              // return SlideTransition(
              //   position: animation.drive(tween),
              // child: child,
              // );
        }
    ));

  },
  child:   Card(
    margin: EdgeInsets.all(10),
    elevation: 8,
    child:   Row(
      children: [
        Hero(
          tag: "Image recipe" + recipe.title,
          child: Image.asset(recipe.imageAsset,
            width: 100,
            height: 100,
            fit: BoxFit.cover,
          ),
        ),
    
        Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(recipe.title,
                style:
                  TextStyle (fontWeight: FontWeight.bold, fontSize: 20)),
              ),
              Text(recipe.user,
              style: TextStyle(color: Colors.grey[500],fontSize:16))
            ],
          ),
        )
    
      ],
    ),
  ),
);
  }
}
