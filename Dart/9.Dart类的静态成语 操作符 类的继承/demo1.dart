/*
*  Dart的对象操作符:
*     ?     条件运算符 （了解）  废弃
*     as    类型转换
*     is    类型判断
*     ..    级联操作 （连缀）
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

void main(){
  Person p = new Person('张三', 20);

  //is
  // if(p is Person) {
  //   p.name = '李四';
  // }

  //as

  // (p as Person).name = '李四';

  // .. 级联操作符

  p..name = '李四'
   ..age = 40
   ..printInfo();
}
