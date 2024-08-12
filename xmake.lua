add_rules("mode.debug", "mode.release")
add_requires("fmt")
set_encodings("utf-8")
set_languages("c++20")

target("main")
    set_kind("binary")
    add_packages("fmt")
    add_files("src/*.mpp")
