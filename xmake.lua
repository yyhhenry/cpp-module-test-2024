add_rules("mode.debug", "mode.release")
set_encodings("utf-8")
set_languages("c++23")

target("vscode-main")
    set_default(true)
    set_kind("binary")
    add_files("src/*.mpp", "src/*.cpp")

target("main")
    set_default(false)
    set_kind("binary")
    add_defines("ENABLE_CXX_MODULES")
    add_files("src/*.mpp", "src/*.cpp")
