/*
*   Dart的静态成员
*       1.使用static 关键字来实现类级别的变量和函数
*       2.静态方法不能访问非静态成员，非静态方法可以访问静态成员
* */

class Person {
  static String name = '张三';
  int age = 20;
  static void show() {
    print(name);
  }

  void printInfo() {
    print(name); // 非静态方法可以访问静态成员
    print(this.age); // 非静态方法可以访问非静态成员
    show(); // 非静态方法可以访问静态成员
  }
}

void main() {
  // 1.静态成员的访问方式
  print(Person.name);
  Person.show();

  // 2.创建Person对象
  Person p = new Person();
  p.printInfo();
}
