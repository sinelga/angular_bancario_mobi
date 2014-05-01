library dart_controller;

import 'package:angular/angular.dart';
import "package:js/js.dart" as js;
import "package:jsonp/jsonp.dart" as jsonp;
import 'dart:async';
import "package:dartapp/domains.dart";


@Controller(
    selector: '[articles]',
    publishAs: 'ctrl')
class DartController {
    List forMarkList;
//  Recipe selectedRecipe;
//  List recipes;
  bool articlesListLoaded;
  ForMark selectedArticles;
  bool articleSelected;

  DartController() {
    
    articlesListLoaded = false;
    articleSelected = false;
    forMarkList = new List<ForMark>();
    _loadDataJsonp();
  }

  void _loadDataJsonp() {
     
     Future<js.Proxy> result = jsonp.fetch(
         
         uri: "http://146.185.151.26/redis?redisid=it_IT:news:Home&callback=?"
           
     );

     result.then((js.Proxy proxy) {
 
       display(proxy);
       
     });
     
//     getArticles("fi_FI","finances","Ulkomaat");   
    
   }
  
  void display(var data) {
    
    for (var i=0;i < 12;i++){
                
      ForMark forMark = new ForMark();      
      forMark.Cont = data[i]["Cont"];
      forMark.ImageLink = data[i]["ImgLink"];
      forMark.Title = data[i]["Title"];
      forMarkList.add(forMark);
      
    }
    articlesListLoaded = true;
   
  }
  
  void selectArticles(ForMark articles) {
    selectedArticles = articles;
    
    articleSelected = true;
  }
  void closeBigArticle() {
  
     articleSelected = false;
     
     
   }
  
  
}


