library dartapp;

import 'package:angular/angular.dart';
import 'package:angular/application_factory.dart';

import 'package:dartapp/dart_controller.dart';
import 'package:dartapp/bigarticle/bigarticle_component.dart';


@MirrorsUsed(targets: const['domains'], override: '*')
import 'dart:mirrors';

class MyAppModule extends Module {
  MyAppModule() {
    type(DartController);
    type(BigArticleComponent);

  }
}

void main() {
  applicationFactory()
      .addModule(new MyAppModule())
      .run();
}
