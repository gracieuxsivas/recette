
import 'package:flutter/material.dart';
import 'package:recette/recipeBox.dart';
import 'package:provider/provider.dart';
import 'package:recette/RecipeScreen.dart';
import 'package:recette/recipe.dart';
import 'package:recette/recipeListScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // ignore: await_only_futures
  RecipeBox.init();
  runApp( MyApp());
}
class MyApp extends StatelessWidget {
   //MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Demo',
      //onGenerateRoute: (settings)=> RouteGenerator.generateRoute(settings),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.red,
      ),
        home:

      // RecipeScreen (recipe: Recipe(
      //     'Pizza facile',
      //     'Graceux Siva',
      //     'images/pizza.jpeg',
      //     'Faire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\n Faire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau Faire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\n\nFaire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\nFaire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\n Faire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau Faire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\n\nFaire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\nFaire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\n Faire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau Faire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\n\nFaire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau',
      //     //is favorite
      //     false,
      //     //favorited count
      //     50),),
      RecipeListScreen()
    );
  }
}
// class RouteGenerator {
//   static Route<dynamic> generateRoute(RouteSettings settings) {
//     switch (settings.name){
//       case'/':
//         return MaterialPageRoute(builder: (context)=> RecipeListScreen());
//         case '/recipe':
//         return  PageRouteBuilder(
//             pageBuilder : (context,animation, secondaryAnimation)=> RecipeScreen (recipe : settings.arguments),
//             transitionsBuilder: (context,animation, secondaryAnimation, child) {
//               animation=CurvedAnimation(curve: Curves.ease, parent: animation);
//     return FadeTransition(
//     opacity: animation,
//     child: child,
//     );
//     }
//     );
//
//
//       default:
//         return MaterialPageRoute(builder: (context)=> Scaffold (
//           appBar : AppBar(title: Text ("Error"),centerTitle: true),
//           body: Center(
//             child: Text ("Page not found"),
//           ) ,
//         )
//         );
//     }
//   }
// }



