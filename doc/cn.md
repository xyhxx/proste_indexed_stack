# 介绍

提供懒加载功能的IndexedStack组件，当第一次展示页面之前将页面推入stack中，所有的参数与IndexedStack一致，你可以像使用IndexedStack一样使用ProsteIndexedStack

# 使用 

``` dart
int _current = 0;

ProsteIndexedStack(
  index: _current,
  children: [
    Page1(),
    Page2(),
    Page3(),
    Page4(),
    ...
  ],
);
```