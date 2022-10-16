import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0.0,
      ),
      body: const AnimationDemo(),
    );
  }
}

class AnimationDemo extends StatefulWidget {
  const AnimationDemo({super.key});

  @override
  State<AnimationDemo> createState() => _AnimationDemoState();
}

// 动画使用步骤:
// 1. 状态组建继承 SingleTickerProviderStateMixin
class _AnimationDemoState extends State<AnimationDemo>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation animation;
  late Function(AnimationStatus) _listener;
  @override
  void initState() {
    super.initState();
    // 2. 创建控制器
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    // 3.声明动画曲线
    animation = CurvedAnimation(parent: controller, curve: Curves.bounceIn);

    // 4.1.监听动画
    animation.addListener(
      () {
        print(animation.value);
        setState(() {});
      },
    );
    // 4.2. 创建动画范围
    animation = Tween(begin: 50.0, end: 400.0).animate(controller);
    // 5. 执行动画
    // controller.forward();
    _listener = (state) {
      if (state == AnimationStatus.completed) {
        controller.reverse();
      } else if (state == AnimationStatus.dismissed) {
        controller.forward();
      }
    };
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                controller.forward();
              },
              child: const Text('放大')),
          ElevatedButton(
              onPressed: () {
                controller.reverse();
              },
              child: const Text('缩小')),
          ElevatedButton(
            onPressed: () {
              if (animation.isCompleted) {
                controller.reverse();
              }
              if (animation.isDismissed) {
                controller.forward();
              }
              // 动画状态变化的时候执行里面的回调函数
              animation.addStatusListener(_listener);
            },
            child: const Text('重复'),
          ),
          ElevatedButton(
              onPressed: () {
                // 动画状态变化的时候执行里面的回调函数
                animation.removeStatusListener(_listener);
                controller.stop();
                controller.reset(); // 动画重制到出事状态
              },
              child: const Text('停止')),
          Icon(Icons.favorite, color: Colors.red, size: animation.value),
          Opacity(
            // 默认取值范围
            opacity: controller.value,
            child: const Text('Hello World'),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    // 释放资源
    print('dispose');
    controller.dispose();
  }
}
