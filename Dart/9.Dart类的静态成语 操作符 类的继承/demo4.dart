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
  Person.xxx(this.name, this.age);
  void printInfo() {
    print("${this.name}---${this.age}");
  }
}

class Web extends Person{
  String sex;
  //给命名构造函数传参
  Web(String name, num age, this.sex):super.xxx(name, age);

  run(){
    print("${this.name}-${this.age}--${this.sex}");
  }
}

void main(){
  Web w = new Web('李四', 20, '男');
  w.printInfo();
  w.run();
}
