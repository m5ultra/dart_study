import 'package:flutter/material.dart';
// import '01_base/01_Hello.dart';
// import '01_base/02_text.dart';
// import '02_layout/01_container.dart';
// import '02_layout/02_Column_Row.dart';
// import '02_layout/03_flex.dart';
// import '02_layout/04_wrap.dart';
// import '02_layout/05_stack.dart';
// import '02_layout/06_card.dart';
// import '03_btns/01_buttons.dart';
// import '04_imgs/01_images.dart';
// import '05_list/01.single_child_scroll_view.dart';
// import '05_list/02.listview.dart';
// import '05_list/03.gridview.dart';
// import '05_list/04.gridview_named_constructor.dart';
// import '06_others/01_cupertino.dart';
// import '06_others/02.safe_area.dart';
// import '07.third_party/01_dio.dart';
// import '08_state/01_StateFullWidget.dart';
// import '08_state/02_dataTable.dart';
// import '08_state/03_inherited.dart';
// import '08_state/04_lifeCycle.dart';
// import '08_state/05_Provider.dart';
// import '09_routes/01_anonymous.dart';
import '09_routes/02_namedRoute.dart';
// import '09_routes/03_onGenerate.dart';
// import '09_routes/04_arguments.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); // 常量构造函数

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo', // 状态管理
      debugShowCheckedModeBanner: false,
      // home: const Home(), // 不设置路由的时候 这里生效

      // 命名路由开始
      routes: {
        'Home': (context) => const Home(),
        'Detail': (context) => const Detail(),
      },
      initialRoute: 'Home', // 命名路由初始页面
      // 命名 路由 404 页面
      onUnknownRoute: (RouteSettings settings) => MaterialPageRoute(builder: (context) => const Unknown()),
      // 命名路由结束

      // 动态路由开始 声明动态路由 命名路由就失效了
      // onGenerateRoute: (RouteSettings settings) {
      //   if(settings.name == '/') {
      //     return MaterialPageRoute(builder: (context) => const Home());
      //   }
      //
      //   if(settings.name == '/detail') {
      //     return MaterialPageRoute(builder: (context) => const Detail());
      //   }
      //
      //   // 例如详情页面 /details/:id
      //   Uri uri = Uri.parse(settings.name as String);
      //   if(uri.pathSegments.length == 2 && uri.pathSegments.first == 'detail') {
      //     String id = uri.pathSegments[1];
      //     return MaterialPageRoute(builder: (context) => Detail2(id: id));
      //   }
      //   // 所有的都没有匹配 跳转到404 页面
      //   return MaterialPageRoute(builder: (context) => const Unknown());
      // },
      // 动态路由结束

      theme: ThemeData(
        fontFamily: 'FiraCode',
        primarySwatch: Colors.purple,
      ),
    );
  }
}
