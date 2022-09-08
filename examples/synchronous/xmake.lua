add_rules("mode.debug", "mode.release")

-- 开发期间默认编译debug版本，发布时默认编译release版本
set_defaultmode("debug")
--set_defaultmode("release")
set_xmakever("2.7.1")
set_languages("c++20")

target("synchronous")
    set_kind("binary")
    add_defines("_WIN32_WINNT=0x0A00")
    add_includedirs("../../include")
    add_files("main.cpp", "../../src/*.cpp", "../../include/binapi/*.cpp")
    add_packages( "boost", "openssl")
target_end()