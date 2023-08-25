/*
* dart 没有 public private protected 这些访问修饰符
* 默认情况下，每一个定义的变量、方法、类都是公开的，可以在任何地方被访问
* 如果你想定义一个私有的变量、方法、类，在变量、方法、类前面加上 _ 下划线即可
* */

import 'lib/Animal.dart';
void main() {
  Animal a = new Animal('小黑', 20);
  a.printInfo();
  // print(a._name); // 私有属性不可以访问
  // a._run(); // 私有方法不能访问
  print(a.getName());
  a.execRun();
}
