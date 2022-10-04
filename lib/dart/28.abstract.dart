abstract class Phone {
  // 声明抽象方法
  void processor(); // 这个方法标记为手机的处理器
  void camera(); // 摄像头
  // 抽象类可以有抽象方法 也可以没有抽象方法
  // 一般来说抽象类中都有抽象方法
  // 抽象类中也可以有普通方法
  void info() {
    print('我是抽象类中一个普通方法');
  }
}

// 普通类继承了抽象类 就必须实现抽象类中所有的抽象方法
class Xiaomi extends Phone {
  @override
  void camera() {
    print('三星摄像头');
  }

  @override
  void processor() {
    print('骁龙888');
  }
}

class Huawei extends Phone {
  @override
  void camera() {
    print('徕卡');
  }

  @override
  void processor() {
    print('麒麟9000');
  }

  // 普通类不能有抽象方法
  // void aaa();
}

void main() {
  // 抽象类不能被实例化
  // Phone o = Phone();

  Xiaomi xm = Xiaomi();
  xm.processor();
  xm.camera();
  xm.info();

  Huawei hw = Huawei();
  hw.processor();
  hw.camera();
  hw.info();
}
