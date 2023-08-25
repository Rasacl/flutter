void main(){
  //List
  List list1 = [1,2,3,'Dart',true];
  print(list1.length);
  print(list1.isEmpty);
  print(list1.isNotEmpty);
  print(list1.reversed); //倒序
  print(list1.reversed.toList()); //倒序转换成List
  print(list1.reversed.toList().reversed); //倒序转换成List再倒序
  //List的方法
  list1.add('新增的值'); //增加
  list1.addAll(['新增1','新增2']); //增加多个
  list1.indexOf('Dart'); //查找 返回索引 如果没有返回-1
  list1.remove('Dart'); //删除
  list1.removeAt(0); //删除指定位置
  list1.fillRange(1, 2, '填充的值'); //指定位置填充 从1开始到2结束 不包含2 用填充的值填充 也可以是List
  list1.insert(1, '插入的值'); //指定位置插入
  list1.insertAll(1, ['插入1','插入2']); //指定位置插入多个
  var li = list1.join('-'); //转换成字符串 用-连接
  li.split('-'); //转换成List 用-分割


  //Set
  var set1 = new Set();
  set1.add('苹果'); //增加
  set1.addAll(['香蕉','西瓜']); //增加多个
  set1.remove('苹果'); //删除
  set1.contains('香蕉'); //查找
  set1.toList(); //转换成List

  //List 去重
  List list2 = ['苹果','香蕉','西瓜','苹果','香蕉','西瓜'];
  var list3 = new Set();


  //Map
  var person = {
    "name": '张三',
    "age": 20,
    "work": ['程序员','送外卖']
  };
   var n = new Map();
    n['name'] = '李四';

    //Map的属性
    print(person.keys); //所有的key
    print(person.values); //所有的value
    print(person.isEmpty); //是否为空
    print(person.isNotEmpty); //是否不为空
    print(person.length); //长度

    //Map的方法

  person.addAll({
    "height":100
  });
  person.remove('height');
  person.containsValue('张三'); //查找 返回true或false

  List list4 = ['苹果','香蕉','西瓜'];
  for(var i = 0; i < list4.length; i++){
    print(list4[i]);
  }

  for(var item in list4){
    print(item);
  }

  list4.forEach((value){
    print(value);
  }); //forEach循环 传入一个匿名函数 匿名函数传入一个参数 接收list4的值 也可以传入两个参数 接收list4的值和索引 也可以传入三个参数 接收list4的值 索引和list4本身

   list4.map((value){
    return value;
  });

  list4.where((value){
    return value == '苹果';
  }); // where方法 传入一个匿名函数 匿名函数传入一个参数 接收list4的值 返回一个新的List

  list4.any((value){
    return value == '苹果';
  }); // any方法 传入一个匿名函数 匿名函数传入一个参数 接收list4的值 返回一个布尔值 只要有一个满足条件就返回true 否则返回false

  list4.every((value){
    return value == '苹果';
  }); // every方法 传入一个匿名函数 匿名函数传入一个参数 接收list4的值 返回一个布尔值 所有的都满足条件才返回true 否则返回false
}
