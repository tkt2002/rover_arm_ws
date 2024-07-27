# generated from ament/cmake/core/templates/nameConfig.cmake.in

# prevent multiple inclusion
if(_gzb_CONFIG_INCLUDED)
  # ensure to keep the found flag the same
  if(NOT DEFINED gzb_FOUND)
    # explicitly set it to FALSE, otherwise CMake will set it to TRUE
    set(gzb_FOUND FALSE)
  elseif(NOT gzb_FOUND)
    # use separate condition to avoid uninitialized variable warning
    set(gzb_FOUND FALSE)
  endif()
  return()
endif()
set(_gzb_CONFIG_INCLUDED TRUE)

# output package information
if(NOT gzb_FIND_QUIETLY)
  message(STATUS "Found gzb: 0.0.0 (${gzb_DIR})")
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "Package 'gzb' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  # optionally quiet the deprecation message
  if(NOT ${gzb_DEPRECATED_QUIET})
    message(DEPRECATION "${_msg}")
  endif()
endif()

# flag package as ament-based to distinguish it after being find_package()-ed
set(gzb_FOUND_AMENT_PACKAGE TRUE)

# include all config extra files
set(_extras "")
foreach(_extra ${_extras})
  include("${gzb_DIR}/${_extra}")
endforeach()
