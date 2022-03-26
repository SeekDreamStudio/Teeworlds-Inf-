# Install script for directory: A:/Teeworlds-InfPlus

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Program Files (x86)/teeworlds")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdatax" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/teeworlds" TYPE DIRECTORY FILES "A:/Teeworlds-InfPlus/data")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xclientx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "A:/Teeworlds-InfPlus/build/teeworlds.exe")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xserverx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "A:/Teeworlds-InfPlus/build/teeworlds_srv.exe")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xportablex")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/teeworlds-0.6.5-win32" TYPE EXECUTABLE FILES "A:/Teeworlds-InfPlus/build/teeworlds.exe")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xportablex")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/teeworlds-0.6.5-win32" TYPE EXECUTABLE FILES "A:/Teeworlds-InfPlus/build/teeworlds_srv.exe")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xportablex")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/teeworlds-0.6.5-win32" TYPE DIRECTORY FILES "A:/Teeworlds-InfPlus/data")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xportablex")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/teeworlds-0.6.5-win32" TYPE FILE FILES
    "A:/Teeworlds-InfPlus/license.txt"
    "A:/Teeworlds-InfPlus/storage.cfg"
    "A:/Teeworlds-InfPlus/other/freetype/windows/lib32/freetype.dll"
    "A:/Teeworlds-InfPlus/other/sdl/windows/lib32/SDL.dll"
    "A:/Teeworlds-InfPlus/other/config_directory.bat"
    )
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "A:/Teeworlds-InfPlus/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
