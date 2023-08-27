/*
* mixins 混入
* 1、作为mixins的类只能继承自Object，不能继承其他类
* 2、作为mixins的类不能有构造函数
* 3、一个类可以mixins多个mixins类
* 4、mixins绝不是继承，也不是接口，而是一种全新的特性
* */

mixin class A{
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

class C with A,B{

}
void main(){
  C c = new C();
  c.printA();
  c.printB();
  print(c.name);
}

