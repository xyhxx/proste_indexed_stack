# 介绍

提供懒加载功能的IndexedStack组件，当第一次展示页面之前将页面推入stack中，所有的参数与IndexedStack一致，你可以像使用IndexedStack一样使用ProsteIndexedStack

# 注意

在debug模式下第一次切换页面可能会有卡顿现象，在release模式下是正常的，已经经过了测试。

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