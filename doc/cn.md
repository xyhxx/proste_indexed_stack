<img src="https://raw.githubusercontent.com/xyhxx/program_preview/master/logo/indexed_stack.png" />

# 介绍

提供懒加载功能的IndexedStack组件，当第一次展示页面之前将页面推入stack中，所有的参数与IndexedStack一致，你可以像使用IndexedStack一样使用ProsteIndexedStack

# 注意

在debug模式下第一次切换页面可能会有卡顿现象，在release模式下是正常的，已经经过了测试。

# 使用

`preload` 可以对部分页面进行预加载。注意即使preload为false也会预加载初始化时的index索引页面。

如果你不喜欢当前使用方式觉得与正常的IndexedStack使用方式不同，或者您的页面完全不需要预加载，包裹了IndexedStackChild觉得麻烦，可以使用`0.1.1`版本，此版本使用方式与IndexedStack完全相同，除了没有预加载功能，与当前版本功能也完全相同。

``` dart
int _current = 0;

ProsteIndexedStack(
  index: _current,
  children: [
    ProsteIndexedStack(
        index: _current,
        children: [
          IndexedStackChild(child: HomePage()),
          IndexedStackChild(child: Page2()),
          IndexedStackChild(child: Page3(), preload: true),
          IndexedStackChild(child: Page4()),
        ],
      )
    ...
  ],
);
```
如果您有什么建议或者使用中出现问题，欢迎到<a href="https://github.com/xyhxx/proste_indexed_stack/issues">issues</a>中发布，我会定期查看并回复。

```

MIT License

Copyright (c) 2021 xyhxx

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.


```