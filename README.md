## Common Line

### 01.创建工程

```shell
flutter create my_app_name
```

### 02.查看模拟器
```shell
flutter emulators
```
> OutPut:
> 
> 2 available emulators:
> 
> apple_ios_simulator • iOS Simulator  • Apple  • ios
> 
> Pixel_5_API_30      • Pixel 5 API 30 • Google • android
> 
> To run an emulator, run 'flutter emulators --launch <emulator id>'.
> 
> To create a new emulator, run 'flutter emulators --create [--name xyz]'.
> 
> You can find more information on managing emulators at the links below:
> 
> https://developer.android.com/studio/run/managing-avds
> 
> https://developer.android.com/studio/command-line/avdmanager

### 03.在模拟器打开应用
```shell
flutter emulators --launch apple_ios_simulator
flutter emulators --launch Pixel_5_API_30
```

### 04.打开IOS的模拟器

```shell
open -a Simulator
```

### 05.启动项目
```shell
flutter run
```

## Dart 基础语法
### 01.注释：

```dart
// 单行注释

/**
* 02.多行注释
*/

/// 文档注释 可以通过命令转成文档
```

### 02.声明变量
> 变量： 变量是一个引用, Dart中万物皆是对象 变量存储对象的引用

> 明确指定类型
```dart
int age = 18;
```

> 不明确指定类型
```dart
var age = 18; 
dynamic age = 18;
```

> 变量名大小写敏感

```dart
const age = '大小写敏感';
const Age_ = '大小写敏感';
```

> 变量的默认值是null （js中变量的默认值是undefined）

> Dart 变量的值不会进行隐式转换 （null 不会自动转成 false）

> 声明常量 使用关键字 const final

```dart
const time = DateTime.now(); // 报错 - 无法将运行时的值分配给const变量
final time = DateTime.mow(); // 成功 - 可以将运行时的值分配给final变量
```

### 03.数据类型 Number

> Dart中的数字由三个关键字描述：
 - num 数字类型 （即可以是整数, 也可以是小数）
    - int 表示整数 （必须是整数）
    - double 表示浮点数 （既可以是整数 也可以是小数）

> 常用API：
> 
> https://api.dart.cn/stable/2.18.2/dart-core/num-class.html
> 
> https://api.dart.cn/stable/2.18.2/dart-core/int-class.html
> 
> https://api.dart.cn/stable/2.18.2/dart-core/double-class.html


### 04.字符串类型

- 声明字符串 String
   - 单引号 双引号都可以 
   - 三个引号可以声明包含换行符的字符串
- 常见API
   - 
- 正则表达式
```dart
   const s = r'正则表达式';
   const num = r'\d+'; 
   const reg = RegExp(s);
```
  

### 05.Boolean

- Dart中通过 bool 关键字表示布尔值
- 布尔类型只有两个值 true false
- 对变量类型判断时 要显式地检查布尔值

```dart
const name = '0';

if(name == 0) {
  // ...
}

if(name == null) {
  // ...
}
```

### 06.数据类型 List
- Dart 中的数组, 有List对象表示 List 有两种声明方式
    - 字面量方式
    - 构造函数类型

```dart
List list = []; // 不限制元素类型
List list = <int> []; // 限制元素类型为int类型
```

```dart
List list = new List.empty(growable: true); // 不限制长度的空列表
List list = new List.fill(3, 0); // 声明指定长度的填充数组
```

- 扩展操作符(...)

```dart
const list = [1, 2, 3];
const list02 = [0, ...list]; // [0, 1, 2, 3]
```
> List 的便利
 - forEach()
    - 便利列表
 - map()
   - 便利并处理元素 然后生成新的列表
 - where()
    - 返回满足条件的数据
 - any() 
   - 只要有一项满足条件 就返回 true
 - every() 
   - 判断是否每一项都满足条件 都满足条件才返回true

### 07. 数据类型Set
- Set是一个无序的 元素唯一的集合
- Set有字面量和构造函数两种声明方式 （字面量用打括号）
- 无法通过下标取值
- 具有集合特有的操作
 - 例如： 求交集 并集 差集

### 07.数据类型Map
- Map是一个无序的键值对（key-value）映射， 通常被成为哈希 或者 字典.
- 声明方式 Map m = {key1: value1, key2: value2};
- Map m2 = new Map(); m2['key'] = value;

### 08. 数据类型 其他
- Runes(符文)
- Runes 对象是一个 32 位的字符对象， 它可以把文字转换成符号表情 或者 特定的文字
- https://copychar.cc

- Symbol
- 在Dart中符号用#开头来表示的标识符

- dynamic
- 动态数据类型

