/*
* 面向对象编程(OOP)的三个基本特征是：封装、继承、多态。
*     封装：封装是对象和类概念的主要特性。封装，把客观事物封装成抽象的类，并且把自己的部分属性和方法提供给其他对象调用， 而一部分属性和方法则隐藏。
*     继承：面向对象编程 (OOP) 语言的一个主要功能就是“继承”。继承是指这样一种能力：它可以使用现有类的功能，并在无需重新编写原来的类的情况下对这些功能进行扩展。
*     多态：允许将子类类型的指针赋值给父类类型的指针。同一个函数调用会有不同的执行效果。
* Dart 是一门使用类和单继承的面向对象编程语言，所有的对象都是类的实例，并且所有的类都是 Object 的子类。
* */
// class Person{
//   String name = '张三';
//   int age = 20;
//   // 自定义类的默认构造函数
//   Person(){
//     print('这是构造函数里面的内容，类实例化的时候触发');
//   }
//   void printInfo(){
//     print("${this.name}---${this.age}");
//   }
//
//   void setInfo(int age){
//     this.age = age;
//   }
//
// }

class Person{
  String name;
  int age;
  // 自定义类的默认构造函数
  // Person(this.name, this.age){
  //   this.name = name;
  //   this.age = age;
  // }
  // 简写
  Person(this.name, this.age);
  void printInfo(){
    print("${this.name}---${this.age}");
  }

  void setInfo(int age){
    this.age = age;
  }
}

void main(){
  // 实例化
  // var p1 = new Person();
  Person p1 = new Person("Alice", 25);
  Person p2 = new Person("Bob", 20);
  // print(p1.name);
  // p1.printInfo();
  // p1.setInfo(30);
  p1.printInfo();
  p2.printInfo();

}
