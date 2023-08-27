/*
* 泛型  就是解决 类 接口 方法的复用性 以及对不特定数据类型的支持
*  1.泛型方法
* 2.泛型类
* 3.泛型接口
*
* */

// 1.泛型方法
// T getData<T>(T value){
//   return value;
// }

String getData(String value){
  return value;
}

// 同时支持返回 string类型 和int类型 传入什么 返回什么
T getData1<T>(T value){
  return value;
}

// 2.泛型类

class PrintClass<T>{
  List list = [];
  void add(T value){
    this.list.add(value);
  }
  void printInfo(){
    for(var i = 0; i < this.list.length; i++){
      print(this.list[i]);
    }
  }
}

// 3.泛型接口
abstract class Cache<T>{
  getByKey(String key);
  void setByKey(String key,T value);
}

class FileCache<T> implements Cache<T> {
  @override
  void setByKey(String key, T value) {
    // TODO: implement setByKey
  }

  @override
  getByKey(String key) {
    // TODO: implement getByKey
  }
}


void main(){
  List<String> list1 = [];
  list1.add('13');  //只能添加字符串类型
  getData1<String>("dsdef");

  PrintClass p = new PrintClass<String>();
  p.add('你好');
  p.add('Dart');
  p.add('泛型');
  p.printInfo();

  FileCache f = new FileCache<String>();
  f.setByKey('index', '首页数据');
  f.getByKey('index');

}


