# C++ Module Test 2024

## Description

使用 Xmake 和 MSVC 编译 C++ 模块，使用 C++23 的模块化标准库。

为了让 VSCode 的 IntelliSense 能够正常工作，需要在 `c_cpp_properties.json` 中设置正确的 `compilerPath`，`cppStandard` 和 `compileCommands`。

在目前（2024-04），VSCode 的 IntelliSense 还不支持 C++23 的模块化标准库，我们需要为每个导入设置使用 `#include` 的 fallback。

采用环境变量 ENABLE_CXX_MODULES 来控制是否启用模块化编译，我们的 `run.ps1` 脚本会自动设置这个环境变量。

实际上，不打开开关的情况下，仅仅导致 VSCode 的 IntelliSense 不报错，并提供正确的索引和高亮，能编译的版本还是只有模块化的版本。

为了让 VSCode 的 Xmake 插件能够正常工作，你可以在一次成功的编译之后（例如初次运行 `run.ps1` 后），打开 `xmake.lua` 额外按一次保存。

如果看到了预料之外的错误，尝试 `xmake clean` 后再次运行 `run.ps1`。

假如你想要用 Visual Studio 编译，你可以使用 `xmake project -k vsxmake` 生成 VS 的工程文件，然后用 VS 打开。
