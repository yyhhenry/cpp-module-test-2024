#ifndef ENABLE_CXX_MODULES
#include "common.mpp"
#include "my_fmt.mpp"
#include <print>
#include <string>
#include <vector>
#else
import std;
import my_fmt;
import common;
#endif

auto main(int argc, char **argv) -> int {

    // 测试在没有 pragma once 的情况下，是否可以完成复杂依赖关系
    common::foo();
    common::bar();
    my_fmt::foo();
    my_fmt::bar();

    for (int i = 0; i < argc; i++) {
        std::print("argv[{}]: {}\n", i, argv[i]);
    }
    auto args = std::vector<std::string>(argv, argv + argc);
    my_fmt::print_vec(args);
}