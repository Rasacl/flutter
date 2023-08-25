/**
 * 1 Dart中的运算符
 *  算术运算符：+ - * / %  ++ -- （前++ 后++ 前-- 后--） ~/(取整
 *  关系运算符：==  !=  >  <  >=  <=
 *  逻辑运算符：!  &&  ||
 *  赋值运算符
 *     基础赋值运算符：=  ??=
 *     复合赋值运算符：+=  -=  *=  /=  %=
 *  条件表达式：if else  switch case
 *
 * 类型转换
 * 1. Number与String之间的转换
 * toString() Number类型转换成String类型
 * parse() String类型转换成Number类型
 * 2. 其他类型转换成Booleans类型
 * isEmpty:判断字符串是否为空
 * isNotEmpty:判断字符串是否不为空
 * 3. 其他类型转换成Number类型
 * toInt()、toDouble()
 * 4. 其他类型转换成List类型
 * toList()
 * 5. 其他类型转换成Map类型
 * toMap()
 * 6. 其他类型转换成Set类型
 * toSet()
 * 7. 其他类型转换成固定类型
 * as
 * 8. 其他类型转换成常量类型
 * const
 * 9. 其他类型转换成变量类型
 * var
 * 10. 其他类型转换成final类型
 * final
 */
  void main(){
      int a = 13;
      int b = 5;
      print(a + b);
      print(a - b);
      print(a * b);
      print(a / b);
      print(a % b);
      print(a ~/ b);
      print(a++);
      print(++a);
      print(a--);
      print(--a);

      int c = 5;
      int d = 3;
      print(c == d);
      print(c != d);
      print(c > d);
      print(c < d);
      print(c >= d);
      print(c <= d);

      if(c > d){
        print('c大于d');
      }else{
        print('c小于d');
      }


      bool flag = true;
      print(!flag); // 取反
    /* && 并且： 全部为true则为true 否则为false*/
      print(c > d && c < d);
    /* || 或者： 只要有一个为true则为true 否则为false*/
    print(c > d || c < d);

    /* ??= 如果变量有值，则返回这个值，如果没有值，则赋值为??=后面的值*/
    var e;
    e ??= 10;
    print(e);

    // += -= *= /= %= ~/=
    var f = 10;
    var g = 3;
    print(f += g);
    print(f -= g);
    print(f *= g);
    print(f %= g);
    print(f ~/= g);


    // 条件表达式
    var h = 10;
    var i = 3;
    if(h > i){
      print('h大于i');
    }else{
      print('h小于i');
    }

    var j = h > i ? 'h大于i' : 'h小于i';

    print(j);

    var k = 10;
    switch(k){
      case 10:
        print('我是10');
        break;
      case 20:
        print('我是20');
        break;
      default:
        print('我是其他');
        break;
    }


    // ?? 如果变量有值，则返回这个值，如果没有值，则赋值为??后面的值
    var l;
    var m = l ?? 10;
    print(m);

    // 类型转换
    // Number与String之间的转换
    var n = 123;
    print(n.toString());
    print(n.toString() is String);

    var o = '123';
    print(int.parse(o));
    print(double.parse(o));
    print(o is String);
    print(o is! String);

    // 其他类型转换成Booleans类型
    var p = '';
    print(p.isEmpty);
    print(p.isNotEmpty);

    // 其他类型转换成Number类型
    var q = '123';
    print(int.parse(q));
    print(double.parse(q));

    // 其他类型转换成List类型
    var r = '123';
    print(r.split(''));

    // 其他类型转换成Map类型
    var s = {
      "name":"张三",
      "age":20
    };
    print(s);

  }
