class Animal {
  String _name;
  int age;
  Animal(this._name, this.age);
  void printInfo() {
    print("${this._name}----${this.age}");
  }
  // void _run() {
  //   print("这是一个私有方法");
  // }
}
