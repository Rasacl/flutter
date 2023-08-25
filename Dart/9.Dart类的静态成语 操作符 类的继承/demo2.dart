/*
* Dart 类的继承
*
*   1.子类使用extends关键词来继承父类
*   2.子类会继承父类里面可见的属性和方法 但是不会继承构造函数
*   3.子类能复写父类的方法 getter和setter
*
* */

class Person {
  String name;
  num age;
  Person(this.name, this.age);
  void printInfo() {
    print("${this.name}---${this.age}");
  }
}

class Web extends Person{
  Web(super.name, super.age);
}

void main(){
  Web w = new Web('李四', 20);
  w.printInfo();
}
