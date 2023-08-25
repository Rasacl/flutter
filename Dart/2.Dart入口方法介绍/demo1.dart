// 变量 常量 打印 命名规则
// main(){
//   print('你好 dart');
// }

// 表示main方法没有返回值
// void main(){
//   print('你好 dart');
// }

// dart是强类型语言，可以不预定义变量类型，自动会类型推断
// 定义变量可以通过var关键字，也可以通过类型来定义 写了var就不用写类型 但是类型和var不能同时写  var可以定义任意类型
// dart里面有类型校验，如果类型不匹配，会报错


// void main(){
//   var str = '你好 dart';
//
//   int num = 123;
//   print(str);
//   print(num);
// }

/*
*    dart命名规则：
*            1. 变量名称必须由数字、字母、下划线和美元符($)组成。
*            2. 注意：标识符开头不能是数字
*            3. 标识符不能是保留字和关键字。
*            4. 变量的名字是区分大小写的如: age和Age是不同的变量，编译器会认为是两个不同的变量。
*            5. 标识符(变量名称)一定要见名思意 ：变量名称建议用名词，方法名称建议用动词
* */

/*
*   dart 常量：
*    1. const 常量, const值不变，一开始就得赋值
*    2. final 常量，可以开始不赋值，只能赋值一次，final不仅有const的编译时常量的特性，最重要的它是运行时常量，并且final是惰性初始化，即在运行时第一次使用前才初始化
*    永远不变的量，请使用final或const修饰它，而不是使用var或其他变量类型
*    final name = 'Bob'; // Without a type annotation
*    final String nickname = 'Bobby';
*
*    const bar = 1000000; // Unit of pressure (dynes/cm2)
*    const double atm = 1.01325 * bar; // Standard atmosphere
*
* */
