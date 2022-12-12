import 'package:flutter/material.dart';

class TreeNodeData {
  String title;
  String zones;
  String devices;
  bool expaned;
  bool checked;
  dynamic extra;
  final Color? checkBoxCheckColor;
  final MaterialStateProperty<Color>? checkBoxFillColor;
  final ValueGetter<Color>? backgroundColor;
  final List<Widget>? customActions;
  List<TreeNodeData> children;

  TreeNodeData({
    required this.title,
    required this.expaned,
    required this.checked,
    required this.children,
    this.extra,
    this.checkBoxCheckColor,
    this.checkBoxFillColor,
    this.backgroundColor,
    this.customActions,
    required this.devices,
    required this.zones,
  });

  TreeNodeData.from(TreeNodeData other)
      : this(
          title: other.title,
          expaned: other.expaned,
          checked: other.checked,
          extra: other.extra,
          children: other.children,
          zones: other.zones,
          devices: other.devices,
        );

  @override
  String toString() {
    return 'TreeNodeData{title: $title, expanded: $expaned, checked: $checked, extra: $extra, ${children.length} children}';
  }
}
