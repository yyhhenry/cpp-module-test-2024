# C++ Module Test 2024

## Description

使用 Xmake 和 MSVC 编译 C++ 模块，使用 C++23 的模块化标准库。

为了让 VSCode 的 IntelliSense 能够正常工作，需要在 `c_cpp_properties.json` 中设置正确的 `compilerPath`，`cppStandard`，并在 defines 添加 VSCODE。

在目前（2024-04），VSCode 的 IntelliSense 还不支持 C++23 的模块化标准库，我们需要为每个导入设置使用 `#include` 的 fallback。

采用宏 VSCODE 来控制是否 fallback 到 include。

实际上，include 模式，仅仅导致 VSCode 的 IntelliSense 不报错，并提供正确的索引和高亮，能编译的版本还是只有模块化的版本。
