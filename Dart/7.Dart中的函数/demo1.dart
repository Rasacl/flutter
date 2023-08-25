void main(){
  // 箭头函数  => expr 是 {return expr;} 的缩写。只适用于一个表达式。

  List list = ['苹果', '香蕉', '西瓜'];
  list.forEach((value){
    print(value);
  });
  list.forEach((value) => print(value));

  // 函数的相互调用

  // 匿名方法
  var printNum = () {
    print(123);
  };
  printNum();

  // 自执行方法
  ((int num){
    print(num);
  })(123);

  // 方法的递归
  int sumNum(int n){
    if(n == 1){
      return 1;
    }
    return n + sumNum(n - 1);
  }

  print(sumNum(100));

  // 闭包
  fn(){
    var a = 123;
    return (){
      a++;
      print(a);
    };
  }
  var b = fn();
  b();
}
