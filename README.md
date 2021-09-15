<img src="https://raw.githubusercontent.com/xyhxx/program_preview/master/logo/indexed_stack.png" />

Englist | <a href="https://github.com/xyhxx/proste_indexed_stack/blob/master/doc/cn.md">中文</a>

# Introduce

The indexedstack component provides lazy loading function. When the page is pushed into the stack before the first presentation, all the parameters are consistent with IndexedStack. You can use ProsteIndexedStack like IndexedStack.

# Tip

In debug mode, there may be delay when switching pages for the first time, which is normal in release mode and has been tested.

# Usage

`preload` Some pages can be preloaded. Note that even if preload is false, the index page at initialization will be preloaded.

If you don't like the current way of using IndexedStack and think it's different from the normal way of using IndexedStack, or your page doesn't need to be preloaded at all, and it's troublesome to wrap IndexedStackChild, you can use version `0.1.1`. This version's way of using IndexedStack is exactly the same as that of the current version, except that there is no preloading function.

``` dart
int _current = 0;

ProsteIndexedStack(
  index: _current,
  children: [
    IndexedStackChild(child: HomePage()),
    IndexedStackChild(child: Page2()),
    IndexedStackChild(child: Page3(), preload: true),
    IndexedStackChild(child: Page4()),
  ],
)
```

If you have any suggestions or problems in used, welcome to<a href="https://github.com/xyhxx/proste_indexed_stack/issues">issues</a>,I will check and reply regularly.


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