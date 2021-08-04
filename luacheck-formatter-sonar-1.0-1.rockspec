package = "luacheck-formatter-sonar"
local v = "1.0"
version = v.."-1"

source = {
   url = "git+https://github.com/tyyyyyc/sonar-luacheck.git",
   tag = "v"..version
}
description = {
   summary = "A sonar formatter for luacheck.",
   detailed = [[
      An external formatter for luacheck.
      This formatter output error in generic issue data format and can be imported by sonar scanner.
   ]],
   homepage = "https://github.com/tyyyyyc/sonar-luacheck.git",
   license = "MIT/X11"
}
dependencies = {
   "lua >= 5.1, < 5.4",
   "rapidjson >= 0.4.2"
}
build = {
  type = "builtin",
  modules = {
    sonar = "sonar.lua",
  }
}
