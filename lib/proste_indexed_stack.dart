library proste_indexed_stack;

import 'package:flutter/material.dart';

/// 懒加载IndexedStack组件
class ProsteIndexedStack extends StatefulWidget {
  /// 当前指向的元素索引
  final int index;

  /// 如何定位堆栈中的元素
  final AlignmentGeometry alignment;

  /// 要解析的文本方向
  final TextDirection? textDirection;

  /// 要进行加载的子元素
  final List<Widget> children;

  /// 如何定义子元素的大小
  final StackFit sizing;

  ProsteIndexedStack({
    Key? key,
    this.alignment = AlignmentDirectional.topStart,
    this.textDirection,
    this.sizing = StackFit.loose,
    this.index = 0,
    this.children = const <Widget>[],
  }) : super(key: key);

  @override
  _ProsteLazyIndexedStackState createState() => _ProsteLazyIndexedStackState();
}

class _ProsteLazyIndexedStackState extends State<ProsteIndexedStack> {
  /// 元素数组，未添加的填充一个空的sizedbox
  late List<Widget> _widgets;

  /// 判断当前索引的元素是否已经展示
  late List<bool> _widgetState;

  @override
  void initState() {
    super.initState();
    _widgets = List.generate(
      widget.children.length,
      (index) => index == widget.index
          ? widget.children[widget.index]
          : SizedBox.shrink(),
    );
    _widgetState =
        List.generate(widget.children.length, (index) => index == widget.index);
  }

  @override
  void didUpdateWidget(covariant ProsteIndexedStack oldWidget) {
    /// widget更新前判断需要展示的元素是否已经加入数组
    if (!_widgetState[widget.index]) {
      _widgetState[widget.index] = true;
      _widgets[widget.index] = widget.children[widget.index];
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return IndexedStack(
      children: _widgets,
      alignment: widget.alignment,
      textDirection: widget.textDirection,
      sizing: widget.sizing,
      index: widget.index,
    );
  }
}
