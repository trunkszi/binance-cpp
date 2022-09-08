add_rules("mode.debug", "mode.release")

-- 开发期间默认编译debug版本，发布时默认编译release版本
set_defaultmode("debug")
--set_defaultmode("release")
set_xmakever("2.7.1")
set_languages("c++20")

includes("asynchronous", "asynchronous-user_data", "synchronous", "synchronous-user_data", "websockets")