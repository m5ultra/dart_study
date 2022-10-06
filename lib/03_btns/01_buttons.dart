import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('按钮组建'),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
        elevation: 0,
      ),
      body: const ButtonDemo(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        backgroundColor: Colors.green,
        elevation: 0.0,
        child: const Icon(Icons.add),
      ),
    );
  }
}

class ButtonDemo extends StatelessWidget {
  const ButtonDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Wrap(
        children: [
          TextButton(
            onPressed: () {
              print('TextButton 被点击了');
            },
            onLongPress: () {
              print('TextButton 被长按');
            },
            child: const Text('Text'),
          ),
          ElevatedButton(
            onPressed: () {
              print('ElevatedButton 被点击了');
            },
            onLongPress: () {
              print('ElevatedButton 被长按');
            },
            child: const Text('Elevated'),
          ),
          OutlinedButton(
            onPressed: () {
              print('OutlinedButton 被点击了');
            },
            onLongPress: () {
              print('OutlinedButton 被长按');
            },
            child: const Text('Outlined'),
          ),
          OutlinedButton(
            style: ButtonStyle(
              // 文本的样式
              textStyle: MaterialStateProperty.all(
                const TextStyle(fontSize: 20),
              ),
              // 前景色是按钮的颜色 长按的时候会显示效果
              foregroundColor: MaterialStateProperty.resolveWith(
                (states) {
                  if (states.contains(MaterialState.pressed)) {
                    return Colors.red;
                  }
                  return null;
                },
              ),
              // 长按生效 背景色
              backgroundColor: MaterialStateProperty.resolveWith(
                (states) {
                  if (states.contains(MaterialState.pressed)) {
                    return Colors.yellow;
                  }
                },
              ),
              // 阴影的颜色
              // shadowColor: MaterialStateProperty.all(Colors.blue),
              // 阴影的尺寸
              // elevation: MaterialStateProperty.all(20),
              // 设置按钮的边框
              side: MaterialStateProperty.all(
                const BorderSide(
                  color: Colors.yellow,
                  width: 3,
                ),
              ),
              // 形状
              shape: MaterialStateProperty.all(
                // CircleBorde 圆形
                const StadiumBorder(
                  side: BorderSide(color: Colors.red, width: 2),
                ),
              ),
              // 最小尺寸
              minimumSize: MaterialStateProperty.all(
                const Size(150, 60),
              ),
              // 水波纹的颜色
              overlayColor: MaterialStateProperty.all(Colors.purple),
            ),
            onPressed: () {
              print('OutlinedButton 被点击了');
            },
            onLongPress: () {
              print('OutlinedButton 被长按');
            },
            child: const Text('轮廓按钮'),
          ),
          // 通过OutlineTheme修改 按钮主题
          OutlinedButtonTheme(
            data: OutlinedButtonThemeData(
              style: ButtonStyle(
                overlayColor: MaterialStateProperty.all(Colors.purple),
              ),
            ),
            child: OutlinedButton(
              style: ButtonStyle(
                // 这里设置的样式的优先级 比ThemeData 中的优先级高
                overlayColor: MaterialStateProperty.all(Colors.red),
              ),
              onPressed: () {
                print('OutlinedButton 被点击了');
              },
              onLongPress: () {
                print('OutlinedButton 被长按');
              },
              child: const Text('Outlined'),
            ),
          ),
          // 图标按钮
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.alarm),
            color: Colors.red,
            splashColor: Colors.blue,
            highlightColor: Colors.purple,
            tooltip: '怎么了', // 长按显示
          ),
          TextButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.settings),
            label: const Text('文本按钮'),
          ),
          ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.settings),
            label: const Text('文本按钮'),
          ),
          OutlinedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.settings),
            label: const Text('文本按钮'),
          ),
          Container(
            color: Colors.pink[50],
            width: double.infinity,
            child: ButtonBar(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.alarm),
                  color: Colors.red,
                  splashColor: Colors.blue,
                  highlightColor: Colors.purple,
                  tooltip: '怎么了', // 长按显示
                ),
                TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.settings),
                  label: const Text('文本按钮'),
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.settings),
                  label: const Text('文本按钮'),
                ),
                OutlinedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.settings),
                  label: const Text('文本按钮'),
                ),
              ],
            ),
          ),
          const BackButton(),
          const CloseButton(),
        ],
      ),
    );
  }
}
