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

class _DataTableDemoState extends State<DataTableDemo> {
  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: const [
        DataColumn(label: Text('姓名')),
        DataColumn(label: Text('年龄')),
        DataColumn(label: Text('性别')),
        DataColumn(label: Text('简介')),
      ],
      rows: const [
        DataRow(cells: [
          DataCell(
            Text('张三'),
          ),
          DataCell(
            Text('18'),
          ),
          DataCell(
            Text('男'),
          ),
          DataCell(
            Text('一个有故事的人...'),
          ),
        ])
      ],
    );
  }
}
