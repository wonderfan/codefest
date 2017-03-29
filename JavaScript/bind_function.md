# JavaScript中bind的写法

## 代码片段

    function bind(self, fn) {
      var curryArgs = arguments.length > 2 ? sliceArgs(arguments, 2) : [];
      if (isFunction(fn) && !(fn instanceof RegExp)) {
        return curryArgs.length
          ? function() {
              return arguments.length
                ? fn.apply(self, concat(curryArgs, arguments, 0))
                : fn.apply(self, curryArgs);
            }
          : function() {
              return arguments.length
                ? fn.apply(self, arguments)
                : fn.call(self);
            };
      } else {
        return fn;
      }
    }

## 代码解释

1. bind函数的主要目的是为目标函数提供执行的上下文，使得上下文对象赋予this变量；
2. 注意区分apply和call的差异。
