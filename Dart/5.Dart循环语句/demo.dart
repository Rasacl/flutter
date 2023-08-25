void main(){
  // for循环
  for(int i = 0; i < 10; i++){
    print(i);
  }

  // for in循环

  var names = ['张三', '李四', '王五'];
  for(var name in names){
    print(name);
  }

  // while循环

  var a = 0;
  while(a < 10){
    print(a);
    a++;
  }

  // do while循环

  var b = 0;

  do{
    print(b);
    b++;
  }while(b < 10);

  // break

  for(int i = 0; i < 10; i++){
    if(i == 5){
      break;
    }
    print(i);
  }

  // continue

  for(int i = 0; i < 10; i++){
    if(i == 5){
      continue;
    }
    print(i);
  }

}
