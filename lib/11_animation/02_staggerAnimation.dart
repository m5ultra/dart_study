import 'dart:math';

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

// 0.0 设置混入 SingleTickerProviderStateMixin
class _AnimationDemoState extends State<AnimationDemo>
    with SingleTickerProviderStateMixin {
  // 0.1 声明变量
  late AnimationController controller;
  late Animation<double> animation;
  late Animation sizeAnimation;
  late Animation colorAnimation;
  late Animation rotationAnimation;

  @override
  void initState() {
    super.initState();
    // 1.0 在initState 声明控制器实例
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );

    // 1.1 声明动画 并监听动画
    animation = CurvedAnimation(
      parent: controller,
      curve: const Interval(0.0, 0.5),
    )
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((state) {
        if (state == AnimationStatus.completed) {
          controller.reverse();
        } else if (state == AnimationStatus.dismissed) {
          controller.forward();
        }
      });

    // 2.0 设置其他动画
    sizeAnimation = Tween(begin: 10.0, end: 200.0).animate(animation);
    colorAnimation = ColorTween(begin: Colors.yellow, end: Colors.red).animate(
      CurvedAnimation(
        parent: controller,
        curve: const Interval(0.5, 0.8),
      ),
    );
    rotationAnimation = Tween(begin: 0.0, end: 2 * pi).animate(
      CurvedAnimation(
        parent: controller,
        curve: const Interval(0.8, 1.0),
      ),
    );
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
            child: const Text('重复'),
          ),
          ElevatedButton(
            onPressed: () {
              controller.stop();
            },
            child: const Text('停止'),
          ),
          const SizedBox(
            height: 50,
          ),
          Opacity(
            opacity: controller.value,
            child: Transform.rotate(
              angle: rotationAnimation.value,
              child: Container(
                  width: sizeAnimation.value,
                  height: sizeAnimation.value,
                  color: colorAnimation.value),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }
}
