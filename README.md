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
> apple_ios_simulator • iOS Simulator • Apple • ios
>
> Pixel_5_API_30 • Pixel 5 API 30 • Google • android
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

if(
name == 0) {
// ...
}

if
(
name == null) {
// ...
}
```

### 06.数据类型 List

- Dart 中的数组, 有List对象表示 List 有两种声明方式
    - 字面量方式
    - 构造函数类型

```dart

List list = []; // 不限制元素类型
List list = <int>[]; // 限制元素类型为int类型
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

### 09. 运算符

- 地板除（~/） 把除后的余数 进行向下取整
- 类型判断运算符 （is | is!）
- 避空运算符 （?? | ??=）
- 条件属性访问 （?.）
- 级联运算符 （..）
    - myObject.myMethod(); // 返回myMethod的返回值
    - myObject..myMethod(); // 返回myObject对象的引用

### 10. 函数

- 声明函数
    - 01.函数表达式
        - dart中声明函数不需要function 关键字
    - 02.箭头函数
        - dart中箭头函数 函数体只能写一行且不能带有结束的分毫
        - dart中的箭头函数 只是函数的一种简写形式
    - 03.匿名函数
    - 04.立即执行函数
- 函数参数
    - 必填参数
        - 参数类型 参数名称
    - 可选参数
        - 放在必填参数的后面
        - 通过中括号包裹起来
        - 带默认值的可选参数
    - 命名参数
        - 用打括号包裹起来
        - 调用函数时, 命名参数的名称与声明函数中的名称保持一致
    - 函数参数
        - 把函数的实例作为参数 传给另外一个函数
- 作用域和闭包
    - Dart中闭包的实现方式 与 Javascript中完全一致
    - 作用域链：函数在在执行过程中 会进入调用栈 每个函数都有自己函数作用域 内层函数 可以访问上层函数作用域中的变量 和 方法，
      这样就形成了作用域链
    - 闭包(closure)： 外层函数被调用之后, 外层函数的作用域对象（AO）被内层函数引用着， 导致外层函数的作用域对象无法释放，
      从而形成闭包
    - 使用时机： 既能重用变量， 又保护变量不被污染
- 异步函数
    - JavaScript 中, 异步调用通过Promise来实现
        - async 返回返回一个 Promise。 await 用于等待Promise
    - Dart 中, 异步调用通过Future来实现
        - async 函数返回一个Future, await用于等待Future
    - Future详情
        - https://api/dart.dev/stable/dart-async/Future-class.html

### 11. 类与对象
- 01.类
  - 简介
    - 通过class关键字声明代码段, 包含属性和方法.
    - 属性: 用来描述类的变量
    - 方法: 类中的函数成为类的方法
    - 对象是类的实例化的结果
    - 编程方式
      - 面向对象 OOP
      - 面向过程 POP
  - 构造器（构造函数）
  - 默认构造函数
    - 与类名同名, 在实例化时, 自动被调用
  - 命名构造函数
    - 在类中使用命名构造器(类名.函数名) 实现多个构造器, 可以提供额外的清晰度
  - 常量构造函数
    - 如果类声明的对象不会改变, 您可以通过常量构造函数使这些对象成为编译时对象
  - 工厂构造函数
    - 通过factory 声明， 工厂函数不会自动生成实例, 而是通过代码来决定返回的实例
  - 访问修饰
    - Dart 与 Typescrip 不同 没有访问修饰符 (public, protected, private)
    - Dart 类中, 默认的访问修饰符是公开的 (即 public)
    - 如果 属性 或 方法 以_(下划线) 开头, 则表示私有属性 (即 private)
  - Getter 和 Setter
    - Getter (获取器) 是通过 get 关键字修饰的方法
      - 函数没有小括号 访问时也没有小括号 （像访问属性一样访问方法）
    - Setter (修改器) 是通过 set 关键字修饰的方法
      - 访问时 像设置属性一样给函数传参
  - 初始化列表
    - 作用：在构造函数中设置属性的默认值
    - 时机：在构造函数体执行之前
    - 语法：使用逗号分割初始化表达式
  - static
    - static 关键字指定静态成员 (静态属性 静态方法)
    - 静态成员 可以 通过类名称直接访问(不需要实例化)
    - 实例化是比较消耗资源的 声明静态成员 可以提高程序性能
    - 静态方法不能访问非静态成员 非静态方法可以访问静态成员
      - 静态方法中不能使用this 关键字
      - 不能通过this关键字 访问静态属性
  - 元数据
    - 元数据@开头 可以给代码标记一些额外的信息
      - 元数据可以用在 库 类 构造器 函数 字段 参数 或变量声明的前面
      - e.g： override (重写)
      - 某方法添加该注解后 表示重写了父类的方法的同名方法
      - @required (必填)
      - 可以通过 @required 来注解Dart中的命名参数, 用来指示他是必填参数
      - @deprecated (不建议使用)
      - 若某类 或 某方法加上注解之后, 表示此方法 或 类 不再建议使用
- 02.继承
  - 根据类的先后顺序 可以将类分为父类 和 子类
    - 继承后, 子类可以使用父类中 可见的内容(属性或方法)
    - 子类中 可以通过@override 元数据来标记 "覆写" 的方法
    - "覆写"方法: 子类中与父类中同名的方法
    - 子类中, 可以通过super关键字来引用父类中 可见的方法
      - 属性
      - 方法(普通构造函数, 命名构造函数)
- 03.抽象类
  - 抽象类使用 abstract 关键字修饰的类
  - 抽象类的作用是充当普通类的模板, 约定一些必要的属性和方法
  - 抽象方法 是指 没有方法体的方法
  - 抽象类中一般都有抽象方法 也可以没有抽象方法
  - 普通类中 不能有抽象方法
  - 抽象类不能被实例化 (不能被new)
  - 抽象类可以被普通类继承 (extends)
  - 如果普通类继承抽象类 必须实现抽象类中所有的抽象方法
- 04.接口
  - 接口在Dart 中就是一个类 只是用法不同
  - 与Java 不同, Java 中的接口需要用 interface 关键字声明;  Dart 中不需要
  - 接口可是是任意类 但一般使用抽象类
  - 一个类可以 实现(implements) 多个接口, 多个接口用逗号分割
  - 使用： class MyClass implements Interface1, Interface2 {...}
  - 接口可是看作看成一个一个的小零件。 类实现接口就相当于组装零件
  - 普通类实现了接口 必须重写接口中所有的属性和方法
- 05.混入
  - 混入(Mixin) 是一段公共代码。 混入有两种声明方式：
    - 将类当作混入 class MixinA {...}
      - 作为 Mixin 的类只能继承自 Object, 不能继承其他类
      - 作为 Mixin 的类不能有构造函数
    - 使用 mixin 关键字声明 mixin MixinB {...}
  - 混入 (Mixin) 可以提高代码复用的效率, 普通类可以通过 with 来使用混入
    - class MyClass with MixinA, MixinB {...}
  - 使用多个混入时, 后引入的混入会覆盖之前引入混入中的重复内容
    - MixinA 和 MixinB 中都有hello()方法, MyClass 会使用 MixinB中的 hello 方法
- 06.泛型
  - 泛型是在函数、类、接口中指定宽泛数据类型的语法
    - 泛型函数
    - 泛型类
    - 泛型接口
  - 通常, 在尖括号中, 使用一个字母来代表类型, 例如 E, T, S, K, 和 V等
  - 返回类型 函数名 <输入类型>(参数类型 参数) { 
  -   函数体 
  - }
  - 作用： 使用泛型可以减少重复的代码
- 07.枚举
