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
          selected: v.selected as bool,
          onSelectChanged: (isSel) {
            setState(() {
              v.selected = isSel;
            });
          },
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

  bool sortAscendingBool = true;

  @override
  Widget build(BuildContext context) {
    return DataTable(
      sortAscending: sortAscendingBool,
      sortColumnIndex: 1,
      columns: [
        const DataColumn(label: Text('姓名')),
        DataColumn(
            label: const Text('年龄'),
            numeric: true,
            onSort: (index, asscending) {
              setState(() {
                sortAscendingBool = asscending;
                if (asscending) {
// 升序:数据越大，越往后
                  users.sort((a, b) => a.age.compareTo(b.age));
                } else {
// 降序:数据越小，越往后
                  users.sort((a, b) => b.age.compareTo(a.age));
                }
              });
            }),
        const DataColumn(label: Text('性别')),
        const DataColumn(label: Text('简介')),
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
