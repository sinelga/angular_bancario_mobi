library dartapp;

import 'package:angular/angular.dart';
import 'package:angular/application_factory.dart';

import 'package:dartapp/dart_controller.dart';

class MyAppModule extends Module {
  MyAppModule() {
    type(DartController);
//    type(RatingComponent);
  }
}

void main() {
  applicationFactory()
      .addModule(new MyAppModule())
      .run();
}
