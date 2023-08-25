/*
* Dart中的接口：
*   dart中的接口没有interface关键字定义接口，而是普通类或者抽象类都可以作为接口被实现
*   同样使用implements关键字进行实现
*   但是dart的接口有点奇怪，如果实现的类是普通类，会将普通类和抽象类中的属性的方法全部需要覆写一遍
*  而因为抽象类可以定义抽象方法，普通类不可以，所以一般如果要实现像java接口那样的方式，一般会使用抽象类
*  建议使用抽象类定义接口
*
* */

// 定义一个DB库 支持 mysql  mssql  mongodb
// mysql  mssql  mongodb三个类里面都有同样的方法


abstract class Db { //当做接口 接口：就是约定 、规范
  late String uri; //数据库的链接地址
  add(String data);
  save();
  delete();
}

class Mysql implements Db {
  @override
  String uri;

  Mysql(this.uri);

  @override
  add(String data) {
    print('这是mysql的add方法'+data);
  }

  @override
  delete() {
    return null;
  }

  @override
  save() {
    return null;
  }

}


class MsSql implements Db {
  @override
  String uri;

  MsSql(this.uri);

  @override
  add(String data) {
    print('这是mssql的add方法'+data);
  }

  @override
  delete() {
    return null;
  }

  @override
  save() {
    return null;
  }

}

main() {
  Db mysql = new Mysql('xxxx');
  mysql.add('123');
}
