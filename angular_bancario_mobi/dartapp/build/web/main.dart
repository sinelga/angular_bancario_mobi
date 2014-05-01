library dartapp;

import 'package:angular/angular.dart';
import 'package:angular/application_factory_static.dart';

import 'package:dartapp/dart_controller.dart';
import 'package:dartapp/bigarticle/bigarticle_component.dart';


@MirrorsUsed(targets: const['domains'], override: '*')
import 'dart:mirrors';
import 'main_static_expressions.dart' as generated_static_expressions;
import 'main_static_metadata.dart' as generated_static_metadata;
import 'main_static_injector.dart' as generated_static_injector;

class MyAppModule extends Module {
  MyAppModule() {
    type(DartController);
    type(BigArticleComponent);

  }
}

void main() {
  staticApplicationFactory(generated_static_injector.factories, generated_static_metadata.typeAnnotations, generated_static_expressions.getters, generated_static_expressions.setters, generated_static_expressions.symbols)
      .addModule(new MyAppModule())
      .run();
}
