library bigarticle;

import 'package:angular/angular.dart';
import "package:dartapp/domains.dart";


@Component(
    selector: 'bigarticle',
    templateUrl: 'packages/dartapp/bigarticle/bigarticle_component.html',
    applyAuthorStyles: true,
//    cssUrl: 'packages/dartapp/smallarticle/bigarticle_component.css',
    publishAs: 'cmp')
 class  BigArticleComponent{

  @NgOneWay('articelobj')

    ForMark articelobj; 
  
}