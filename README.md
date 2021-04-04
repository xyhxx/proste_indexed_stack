# Introduce

The indexedstack component provides lazy loading function. When the page is pushed into the stack before the first presentation, all the parameters are consistent with IndexedStack. You can use ProsteIndexedStack like IndexedStack.

# Usage

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