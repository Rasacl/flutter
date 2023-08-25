// 类的抽离
import 'lib/Person.dart';
void main() {
  Person p1 = new Person("Alice", 25);
  Person p2 = new Person.now();
  Person p3 = new Person.setInfo("Bob", 20);
  p3.printInfo();
}
