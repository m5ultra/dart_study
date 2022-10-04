abstract class Processor {
  late String cores; // 内核： 2核 4核
  arch(String name); // 芯片制成： 7nm 5nm 3nm
}

abstract class Camera {
  late String resolution; // 分辨率 1000万 2000万
  brand(String name); // 品牌: 三星 徕卡 蔡司

}

class Phone implements Processor, Camera {
  @override
  late String cores;

  @override
  late String resolution;

  @override
  arch(String name) {
    print('芯片制成 $name');
  }

  @override
  brand(String name) {
    print('相机品牌 $name');
  }

  Phone()
      : cores = '16核',
        resolution = '5000万像素';
}

void main() {
  Phone o = Phone();
  print(o.resolution);
  print(o.cores);
  o.arch('3nm');
  o.brand('徕卡');
}
