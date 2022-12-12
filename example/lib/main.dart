import 'package:flutter/material.dart';
import 'package:flutter_tree/flutter_tree.dart';

import './tree_data.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  Future<List<TreeNodeData>> _load(TreeNodeData parent) async {
    await Future.delayed(const Duration(seconds: 1));
    final data = [
      TreeNodeData(
        title: 'Load node 1',
        expaned: false,
        checked: true,
        children: [],
        extra: null,
        zones: "12 Zones",
        devices: "7 Devices",
      ),
      TreeNodeData(
        title: 'Load node 2',
        expaned: false,
        checked: false,
        children: [],
        extra: null,
        zones: "12 Zones",
        devices: "7 Devices",
      ),
      TreeNodeData(
        title: 'Load node 3',
        expaned: false,
        checked: false,
        children: [],
        extra: null,
        zones: "12 Zones",
        devices: "7 Devices",
      ),
    ];

    return data;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Flutter Tree Example')),
        body: TreeView(
          data: treeData,
          lazy: true,
          load: _load,
          showActions: true,
          showCheckBox: true,
          showFilter: true,
          append: (parent) {
            return TreeNodeData(
              title: 'Appended',
              expaned: true,
              checked: true,
              children: [],
              zones: "",
              devices: "",
            );
          },
          onLoad: (node) {},
          onAppend: (node, parent) {},
          onCheck: (checked, node) {},
          onCollapse: (node) {},
          onExpand: (node) {},
          onRemove: (node, parent) {},
          onTap: (node) {},
        ),
      ),
    );
  }
}
