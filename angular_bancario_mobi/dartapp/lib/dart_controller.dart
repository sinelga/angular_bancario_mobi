library dart_controller;

import 'package:angular/angular.dart';
import "package:js/js.dart" as js;
import "package:jsonp/jsonp.dart" as jsonp;
import 'dart:async';

@Controller(
    selector: '[recipe-book]',
    publishAs: 'ctrl')
class DartController {
  Recipe selectedRecipe;
  List recipes;

  DartController() {
    recipes = _loadData();
    _loadDataJsonp();
  }

  void selectRecipe(Recipe recipe) {
    selectedRecipe = recipe;
  }
  void _loadDataJsonp() {

//     navigationListLoaded = false;
//     articlesListLoaded = false;
//     articleSelected= false;
     
     Future<js.Proxy> result = jsonp.fetch(
         
         uri: "http://146.185.151.26/redis?redisid=it_IT:news:Home&callback=?"
           
     );

     result.then((js.Proxy proxy) {
      
       print(proxy);
//       navigationListLoaded =true;  
//       display(proxy["results"]);
       
     });
     
//     getArticles("fi_FI","finances","Ulkomaat");   
    
   }
  List<Recipe> _loadData() {
    return [
      new Recipe('My Appetizer','Appetizers',
          ["Ingredient 1", "Ingredient 2"],
          "Some Directions", 1),
      new Recipe('My Salad','Salads',
          ["Ingredient 1", "Ingredient 2"],
          "Some Directions", 3),
      new Recipe('My Soup','Soups',
          ["Ingredient 1", "Ingredient 2"],
          "Some Directions", 4),
      new Recipe('My Main Dish','Main Dishes',
          ["Ingredient 1", "Ingredient 2"],
          "Some Directions", 2),
      new Recipe('My Side Dish','Side Dishes',
          ["Ingredient 1", "Ingredient 2"],
          "Some Directions", 3),
      new Recipe('My Awesome Dessert','Desserts',
          ["Ingredient 1", "Ingredient 2"],
          "Some Directions", 5),
      new Recipe('My So-So Dessert','Desserts',
          ["Ingredient 1", "Ingredient 2"],
          "Some Directions", 3),
    ];
  }
}

class Recipe {
  String name;
  String category;
  List<String> ingredients;
  String directions;
  int rating;

  Recipe(this.name, this.category, this.ingredients, this.directions,
      this.rating);
}
