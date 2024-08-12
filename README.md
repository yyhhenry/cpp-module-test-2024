# C++ Module Test 2024

使用 Xmake 编译 C++ 模块，使用 C++20 Modules。

在目前（2024-08），VSCode 的 IntelliSense 还不直接支持 C++20 Modules。

```cpp
// 为了让 VSCode 的 IntelliSense 能够正常工作
#ifdef __INTELLISENSE__
#include "some_module.mpp"
#else
import some_module;
#endif
```
