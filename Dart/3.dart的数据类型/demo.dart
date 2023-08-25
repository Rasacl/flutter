/**
 *  Dart中支持的数据类型：
 *     常用的数据类型：
 *       Number（数值）：
 *         int（整型）
 *         double（浮点型）
 *      String（字符串）
 *        String str1 = '字符串';
 *      Booleans（布尔型）
 *         bool flag = true;
 *      List（数组）
 *         var list = ['苹果','香蕉','西瓜'];  在Dart中数组是列表对象，所以大多数人只是称它们为列表
 *      Maps（字典）
 *         var map = {
 *         "name":"张三",
 *         "age":20
 *         };   在Dart中map是一个对象，所以大多数人只是称它们为字典
 *
 *
 *
 *      项目中用不到的数据类型：
 *          Runes（符文）
 *            在 Dart 中， runes 代表字符串的 UTF-32 编码。rune 是 UTF-32 编码的字符串。它可以通过文字转换成符文符号或者使用 String 类的 .runes 属性来访问
 *            main() {
 *            var clapping = '\u{1f44f}';
 *            print(clapping);
 *            print(clapping.codeUnits);
 *            print(clapping.runes.toList());
 *            Runes input = new Runes(
 *            '\u2665 \u{1f605} \u{1f60e} \u{1f47b} \u{1f596}');
 *            print(new String.fromCharCodes(input));
 *            }
 *
 *          Symbols（符号）
 *              Symbol 对象表示在 Dart 程序中声明的运算符或标识符。您可能永远不需要使用符号，但它们对于按名称引用标识符的API非常有用，因为缩小会更改标识符名称而不会更改标识符符号。
 *              main() {
 *                 #radix
 *              }
 */

void main(){
  // 1.字符串定义的几种方式
  String str1 = '字符串';
  String str2 = "字符串";
  String str3 = '''u防护乳u发个人
  fdwiojkfhjewf
  额分解任务i考虑发了威尔法
  ''';
  print(str3);

  // 2.字符串拼接
  String str4 = '你好';
  String str5 = 'Dart';
  print('$str4 $str5');
  print(str4 + ' ' + str5);


  // int  只能整型
  int num1 = 123;
  // double  既可以整型也可以浮点型
  double num2 = 123.456;

  print(num1);
  print(num2);

  // 运算符
  // 算术运算符：+ - * / %  ++ --
  // 关系运算符：==  !=  >  <  >=  <=
  // 逻辑运算符：!  &&  ||
  // 赋值运算符：=  ??=
  // 条件表达式：if else  switch case
  // 三目运算符：??


  // bool
  bool flag1 = true;
  bool flag2 = false;
  print(flag1);
  print(flag2);

  // 条件表达式
  var flag3 = flag1 ? '我是true' : '我是false';
  if(flag2){
    print('我是true');
  }else{
    print('我是false');
  }

  var a = 123;
  var b = '123';
  if(a == b){
    print('a和b相等');
  }else{
    print('a和b不相等');
  }

  // List
  var list1 = ['苹果','香蕉','西瓜'];
  print(list1);
  print(list1.length);
  print(list1[1]);

  // 定义list的指定类型
  var list2 = <String>['苹果','香蕉','西瓜'];
  List<int> list3 = [];

  //map
  var map1 = {
    "name":"张三",
    "age":20
  };
  print(map1);
  print(map1['name']);

  var map2 = new Map();
  map2['name'] = '李四';
  map2['age'] = 30;
  print(map2);

  // is 关键词来判断类型
  var str6 = '123';
  if(str6 is String){
    print('str6是字符串');
  }else{
    print('str6不是字符串');
  }

}
