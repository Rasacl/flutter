/*
*  自定义方法
*    自定义方法的基本格式：
*      返回类型 方法名称(参数1，参数2，...){
*               方法体
*               return 返回值
*     }
* */


void printInfo(){
  print('我是一个自定义方法');
}

String printUserInfo(){
  return '我是一个有返回值的方法';
}
List getList(){
  return ['111', '222', '333'];
}

void main(){
  print('调用系统内置方法');
  printInfo();

  int getNum(){
    var myNum = 123;
    return myNum;
  }
  print(getNum());
  print(printUserInfo());
  print(getList());

  // 显示方法作用域
  void getNum1(){
    aaa(){
      var myNum = 4564643;
      print(myNum);
    }
    aaa();
  }
  //aaa(); // 无法调用aaa方法，因为aaa方法是在getNum1方法内部，只能在getNum1方法内部调用
  getNum1();

  // 方法传参
  void printUserInfo1(String username, int age){
    print('姓名：$username --- 年龄：$age');
  }
   printUserInfo1('张三', 20);

  // 定义一个可选参数的方法
  void printUserInfo2(String username, [ int? age]){
    print('姓名：$username --- 年龄：$age');
  }
  printUserInfo2('张三');

  // 定义一个有默认参数的方法
  void printUserInfo3(String username, [int age = 30]){
    print('姓名：$username --- 年龄：$age');
  }
  printUserInfo3('张三',50);

  // 定义一个命名参数的方法

  String printUserInfo4(String username,{int? age, String sex = '男'}){
    if(age != null){
      return '姓名：$username --- 年龄：$age --- 性别：$sex';
    }
    return '姓名：$username --- 年龄：保密 --- 性别：$sex';
  }
  print(printUserInfo4('张三',age: 49,sex: '女'));

   // 实现一个把方法当做参数的方法
  fn1() {
    print('fn1');
  }

  fn2(fn) {
    fn();
  }

  fn2(fn1);

  // 匿名方法
  var printNum = () {
    print(123);
  };
}
