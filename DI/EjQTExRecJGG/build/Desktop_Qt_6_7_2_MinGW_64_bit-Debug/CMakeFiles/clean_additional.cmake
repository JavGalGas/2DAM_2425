# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles\\appEjQTExRecJGG_autogen.dir\\AutogenUsed.txt"
  "CMakeFiles\\appEjQTExRecJGG_autogen.dir\\ParseCache.txt"
  "appEjQTExRecJGG_autogen"
  )
endif()
