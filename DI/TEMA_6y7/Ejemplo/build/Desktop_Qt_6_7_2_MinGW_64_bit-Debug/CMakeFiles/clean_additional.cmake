# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles\\appEjemplo_autogen.dir\\AutogenUsed.txt"
  "CMakeFiles\\appEjemplo_autogen.dir\\ParseCache.txt"
  "appEjemplo_autogen"
  )
endif()
