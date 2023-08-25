/*
* getter和setter
* */

class Rect {
  num height;
  num width;

  Rect(this.height, this.width);
  //计算属性
  num get area {
    return this.height * this.width;
  }

  //计算属性
  set areaHeight(value) {
    this.height = value;
  }
}

void main() {
  Rect r = new Rect(10, 4);
  r.areaHeight = 6;
  r.width = 6;
  print(r.area);
}
