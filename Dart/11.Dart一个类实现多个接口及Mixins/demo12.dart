/*
* mixins 混入
* 1、作为mixins的类只能继承自Object，不能继承其他类
* 2、作为mixins的类不能有构造函数
* 3、一个类可以mixins多个mixins类
* 4、mixins绝不是继承，也不是接口，而是一种全新的特性
*
* mixins的实例类型是什么？
* 1、mixins的类型就是其超类的子类型
* 2、继承的子类也是其超类的子类型
*
* */
class Person{
  String name;
  num age;
  Person(this.name,this.age);
  printInfo(){
    print('这是一个Person类');
  }
}


mixin class A {
  String name = 'A';
  void printA(){
    print('A');
  }
}

mixin class B{
  void printB(){
    print('B');
  }
}

class C extends Person with A,B{
  C(String name, num age) : super(name, age);

}
void main(){
  C c = new C('张三',20);
  c.printA();
  c.printB();
  c.printInfo();
  print(c.name);
}

