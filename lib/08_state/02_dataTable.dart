import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('表格组建'),
      ),
      body: const SafeArea(child: DataTableDemo()),
    );
  }
}

class DataTableDemo extends StatefulWidget {
  const DataTableDemo({Key? key}) : super(key: key);

  @override
  State<DataTableDemo> createState() => _DataTableDemoState();
}

class User {
  String name;
  int age;
  bool? selected;

  User(this.name, this.age, {this.selected = false});
}

class _DataTableDemoState extends State<DataTableDemo> {
  List<User> users = <User>[
    User('张三丰', 208),
    User('张翠山', 30),
    User(
      '张无忌',
      60,
      selected: true,
    ),
    User(
      '周芷若',
      35,
    ),
    User(
      '赵敏',
      35,
    ),
  ];

  _getList() {
    List<DataRow> newList = [];
    for (var v in users) {
      newList.add(
        DataRow(
          cells: [
            DataCell(Text(v.name)),
            DataCell(Text(v.age.toString())),
            const DataCell(Text('男')),
            const DataCell(Text('---')),
          ],
        ),
      );
    }
    return newList;
  }

  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: const [
        DataColumn(label: Text('姓名')),
        DataColumn(label: Text('年龄')),
        DataColumn(label: Text('性别')),
        DataColumn(label: Text('简介')),
      ],
      rows: _getList(),

      // const [
      //   DataRow(cells: [
      //     DataCell(
      //       Text('张三'),
      //     ),
      //     DataCell(
      //       Text('18'),
      //     ),
      //     DataCell(
      //       Text('男'),
      //     ),
      //     DataCell(
      //       Text('一个有故事的人...'),
      //     ),
      //   ])
      // ],
    );
  }
}
