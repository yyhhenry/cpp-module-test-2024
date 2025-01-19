add_rules("mode.debug", "mode.release")
set_encodings("utf-8")
set_languages("c++23")

target("main")
    set_kind("binary")
    add_files("src/*.mpp")
