/*
* Dart中的多态：
*   允许将子类类型的指针赋值给父类类型的指针，同一个函数调用会有不同的执行效果
*   子类的实例赋值给父类的引用
*   多态就是父类定义一个方法不去实现，让继承他的子类去实现，每一个子类有不同的表现
* */

abstract class Animal {
  eat(); //抽象方法
}
class Dog extends Animal {
  @override
  eat() {
    print('小狗在吃骨头');
  }
  run() {
    print('小狗在跑');
  }
}

class Cat extends Animal {
  @override
  eat() {
    print('小猫在吃老鼠');
  }
  run() {
    print('小猫在跑');
  }
}

main(){
  // Dog d = new Dog();
  // d.eat();
  // d.run();
  // Cat c = new Cat();
  // c.eat();
  // c.run();

  Animal d = new Dog();
  d.eat();
  // d.run(); //报错  因为Animal中没有run方法
  Animal c = new Cat();
  c.eat();
  // c.run(); //报错

}
