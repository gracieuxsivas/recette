
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:recette/recipe.dart';

class RecipeBox{
  static final RecipeBox instance = RecipeBox();
  static Box? box;
  
  static void init() async {
    final dir = await getApplicationDocumentsDirectory();
    Hive.init(dir.path);
    Hive.registerAdapter(RecipeAdapter());
    RecipeBox.box=await Hive.openBox("recipeBox");
    var values = box?.values;
    // ignore: unnecessary_null_comparison
    if (values ==null || values.isEmpty){
      RecipeBox.box?.putAll(Map.fromIterable(recipes, key: (e) => e.key(), value: (e)=> e));
    }
  }
  static final List<Recipe> recipes = [
    Recipe(
      'Pizza facile',
      'Par Gracieux Siva',
      'images/pizza.jpeg',
      'Faire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\n Faire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau Faire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\n\nFaire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\nFaire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\n Faire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau Faire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\n\nFaire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\nFaire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\n Faire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau Faire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\n\nFaire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau',
      false,
      50),

    Recipe(
        'Burger maison',
        'Par Patience Siva',
        'images/burger.jpeg',
        'Pelez loignon rouge puis emiler-le. Rincer et essorer la roquette. \n\net Faire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\n Faire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau Faire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\n\nFaire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\nFaire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\n Faire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau Faire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\n\nFaire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\nFaire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\n Faire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau Faire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\n\nFaire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau',
        true,
        33),
    Recipe(
        'Crepe comme chez nous',
        'Par Orlando Brithon',
        'images/crepe.jpeg',
        'Verser la farine dans un saladier, creusez un puits. Casse  \n\net Faire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\n Faire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau Faire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\n\nFaire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\nFaire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\n Faire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau Faire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\n\nFaire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\nFaire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\n Faire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau Faire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\n\nFaire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau',
        true,
        13),
    Recipe(
        'cake sucree',
        'Par Smith Hugo',
        'images/cake.jpeg',
        'Travailler les beurre avec du sucre en poudre \n\net Faire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\n Faire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau Faire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\n\nFaire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\nFaire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\n Faire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau Faire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\n\nFaire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\nFaire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\n Faire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau Faire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\n\nFaire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau',
        true,
        18),
    Recipe(
        "Oreilles d'aman",
        'Par Gilbert S',
        'images/oreilles.jpeg',
        'Dans un saladier, battre loeuf avec le sucre et le sucre vanile \n\net Faire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\n Faire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau Faire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\n\nFaire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\nFaire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\n Faire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau Faire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\n\nFaire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\nFaire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\n Faire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau Faire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\n\nFaire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau',
        true,
        55),
    Recipe(
        "Donuts",
        'Par Gilbert S',
        'images/donut.jpeg',
        'Dans un saladier, battre loeuf avec le sucre et le sucre vanile \n\net Faire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\n Faire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau Faire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\n\nFaire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\nFaire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\n Faire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau Faire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\n\nFaire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\nFaire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\n Faire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau Faire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau\n\n\nFaire cuire dans une poele les lardosn et les champignons\nDans un bol, verser la boite de concerve de tomate et en suite ajouter un demi verre deau',
        true,
        55),

  ];



}