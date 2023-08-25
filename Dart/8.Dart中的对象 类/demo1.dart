/**
 * 1.类中的构造函数可以写多个
 * 2.当没有自定义构造函数时，会有一个默认构造函数
 * 3.当自定义构造函数时，默认构造函数就没有了
 * 4.构造函数不能重载
 * 5.命名构造函数
 * 6.常量构造函数
 * 7.工厂构造函数
 */
class Person{
  String? name;
  int? age;
  Person(this.name, this.age);
  // 命名构造函数
  Person.now(){
    print('我是命名构造函数');
  }
  Person.setInfo(String name, int age){
    this.name = name;
    this.age = age;
  }
  void printInfo(){
    print("${this.name}---${this.age}");
  }

  void setInfo(int age){
    this.age = age;
  }
}
void main() {
  Person p1 = new Person("Alice", 25);
  Person p2 = new Person.now();
  Person p3 = new Person.setInfo("Bob", 20);
  p3.printInfo();
}
