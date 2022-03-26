# This file will be configured to contain variables for CPack. These variables
# should be set in the CMake list file of the project before CPack module is
# included. The list of available CPACK_xxx variables and their associated
# documentation may be obtained using
#  cpack --help-variable-list
#
# Some variables are common to all generators (e.g. CPACK_PACKAGE_NAME)
# and some are specific to a generator
# (e.g. CPACK_NSIS_EXTRA_INSTALL_COMMANDS). The generator specific variables
# usually begin with CPACK_<GENNAME>_xxxx.


set(CPACK_ARCHIVE_COMPONENT_INSTALL "ON")
set(CPACK_ARCHIVE_PORTABLE_FILE_NAME "teeworlds-0.6.5-win32")
set(CPACK_BUILD_SOURCE_DIRS "A:/Teeworlds-InfPlus;A:/Teeworlds-InfPlus/build")
set(CPACK_CMAKE_GENERATOR "MinGW Makefiles")
set(CPACK_COMPONENTS_ALL "portable")
set(CPACK_COMPONENTS_ALL_SET_BY_USER "TRUE")
set(CPACK_COMPONENT_UNSPECIFIED_HIDDEN "TRUE")
set(CPACK_COMPONENT_UNSPECIFIED_REQUIRED "TRUE")
set(CPACK_DEFAULT_PACKAGE_DESCRIPTION_FILE "M:/Cmake/share/cmake-3.23/Templates/CPack.GenericDescription.txt")
set(CPACK_DEFAULT_PACKAGE_DESCRIPTION_SUMMARY "teeworlds built using CMake")
set(CPACK_GENERATOR "ZIP")
set(CPACK_INSTALL_CMAKE_PROJECTS "A:/Teeworlds-InfPlus/build;teeworlds;ALL;/")
set(CPACK_INSTALL_PREFIX "C:/Program Files (x86)/teeworlds")
set(CPACK_MODULE_PATH "A:/Teeworlds-InfPlus/cmake")
set(CPACK_NSIS_DISPLAY_NAME "teeworlds 0.6.5")
set(CPACK_NSIS_INSTALLER_ICON_CODE "")
set(CPACK_NSIS_INSTALLER_MUI_ICON_CODE "")
set(CPACK_NSIS_INSTALL_ROOT "$PROGRAMFILES")
set(CPACK_NSIS_PACKAGE_NAME "teeworlds 0.6.5")
set(CPACK_NSIS_UNINSTALL_NAME "Uninstall")
set(CPACK_OUTPUT_CONFIG_FILE "A:/Teeworlds-InfPlus/build/CPackConfig.cmake")
set(CPACK_PACKAGE_DEFAULT_LOCATION "/")
set(CPACK_PACKAGE_DESCRIPTION_FILE "M:/Cmake/share/cmake-3.23/Templates/CPack.GenericDescription.txt")
set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "teeworlds built using CMake")
set(CPACK_PACKAGE_FILE_NAME "teeworlds-0.6.5-win32")
set(CPACK_PACKAGE_INSTALL_DIRECTORY "teeworlds 0.6.5")
set(CPACK_PACKAGE_INSTALL_REGISTRY_KEY "teeworlds 0.6.5")
set(CPACK_PACKAGE_NAME "teeworlds")
set(CPACK_PACKAGE_RELOCATABLE "true")
set(CPACK_PACKAGE_VENDOR "Humanity")
set(CPACK_PACKAGE_VERSION "0.6.5")
set(CPACK_PACKAGE_VERSION_MAJOR "0")
set(CPACK_PACKAGE_VERSION_MINOR "6")
set(CPACK_PACKAGE_VERSION_PATCH "5")
set(CPACK_RESOURCE_FILE_LICENSE "M:/Cmake/share/cmake-3.23/Templates/CPack.GenericLicense.txt")
set(CPACK_RESOURCE_FILE_README "M:/Cmake/share/cmake-3.23/Templates/CPack.GenericDescription.txt")
set(CPACK_RESOURCE_FILE_WELCOME "M:/Cmake/share/cmake-3.23/Templates/CPack.GenericWelcome.txt")
set(CPACK_SET_DESTDIR "OFF")
set(CPACK_SOURCE_GENERATOR "ZIP;TGZ;TBZ2;TXZ")
set(CPACK_SOURCE_IGNORE_FILES "\\.o$;\\.pyc$;/\\.git;/__pycache__/;A:/Teeworlds-InfPlus/([^Cbccdddloorsss]|$);A:/Teeworlds-InfPlus/C([^M]|$);A:/Teeworlds-InfPlus/b([^a]|$);A:/Teeworlds-InfPlus/c([^mo]|$);A:/Teeworlds-InfPlus/d([^aao]|$);A:/Teeworlds-InfPlus/l([^i]|$);A:/Teeworlds-InfPlus/o([^bt]|$);A:/Teeworlds-InfPlus/r([^e]|$);A:/Teeworlds-InfPlus/s([^crt]|$);A:/Teeworlds-InfPlus/CM([^a]|$);A:/Teeworlds-InfPlus/ba([^m]|$);A:/Teeworlds-InfPlus/cm([^a]|$);A:/Teeworlds-InfPlus/co([^n]|$);A:/Teeworlds-InfPlus/da([^tt]|$);A:/Teeworlds-InfPlus/do([^c]|$);A:/Teeworlds-InfPlus/li([^c]|$);A:/Teeworlds-InfPlus/ob([^j]|$);A:/Teeworlds-InfPlus/ot([^h]|$);A:/Teeworlds-InfPlus/re([^a]|$);A:/Teeworlds-InfPlus/sc([^r]|$);A:/Teeworlds-InfPlus/sr([^c]|$);A:/Teeworlds-InfPlus/st([^o]|$);A:/Teeworlds-InfPlus/CMa([^k]|$);A:/Teeworlds-InfPlus/bam([^.]|$);A:/Teeworlds-InfPlus/cma([^k]|$);A:/Teeworlds-InfPlus/con([^f]|$);A:/Teeworlds-InfPlus/dat([^aa]|$);A:/Teeworlds-InfPlus/doc([^s]|$);A:/Teeworlds-InfPlus/lic([^e]|$);A:/Teeworlds-InfPlus/obj([^s]|$);A:/Teeworlds-InfPlus/oth([^e]|$);A:/Teeworlds-InfPlus/rea([^d]|$);A:/Teeworlds-InfPlus/scr([^i]|$);A:/Teeworlds-InfPlus/src([^/]|$);A:/Teeworlds-InfPlus/sto([^r]|$);A:/Teeworlds-InfPlus/CMak([^e]|$);A:/Teeworlds-InfPlus/bam\\.([^l]|$);A:/Teeworlds-InfPlus/cmak([^e]|$);A:/Teeworlds-InfPlus/conf([^i]|$);A:/Teeworlds-InfPlus/data([^/s]|$);A:/Teeworlds-InfPlus/docs([^/]|$);A:/Teeworlds-InfPlus/lice([^n]|$);A:/Teeworlds-InfPlus/objs([^/]|$);A:/Teeworlds-InfPlus/othe([^r]|$);A:/Teeworlds-InfPlus/read([^m]|$);A:/Teeworlds-InfPlus/scri([^p]|$);A:/Teeworlds-InfPlus/stor([^a]|$);A:/Teeworlds-InfPlus/CMake([^L]|$);A:/Teeworlds-InfPlus/bam\\.l([^u]|$);A:/Teeworlds-InfPlus/cmake([^/]|$);A:/Teeworlds-InfPlus/confi([^g]|$);A:/Teeworlds-InfPlus/datas([^r]|$);A:/Teeworlds-InfPlus/licen([^s]|$);A:/Teeworlds-InfPlus/other([^/]|$);A:/Teeworlds-InfPlus/readm([^e]|$);A:/Teeworlds-InfPlus/scrip([^t]|$);A:/Teeworlds-InfPlus/stora([^g]|$);A:/Teeworlds-InfPlus/CMakeL([^i]|$);A:/Teeworlds-InfPlus/bam\\.lu([^a]|$);A:/Teeworlds-InfPlus/config([^u]|$);A:/Teeworlds-InfPlus/datasr([^c]|$);A:/Teeworlds-InfPlus/licens([^e]|$);A:/Teeworlds-InfPlus/readme([^.]|$);A:/Teeworlds-InfPlus/script([^s]|$);A:/Teeworlds-InfPlus/storag([^e]|$);A:/Teeworlds-InfPlus/CMakeLi([^s]|$);A:/Teeworlds-InfPlus/configu([^r]|$);A:/Teeworlds-InfPlus/datasrc([^/]|$);A:/Teeworlds-InfPlus/license([^.]|$);A:/Teeworlds-InfPlus/readme\\.([^t]|$);A:/Teeworlds-InfPlus/scripts([^/]|$);A:/Teeworlds-InfPlus/storage([^.]|$);A:/Teeworlds-InfPlus/CMakeLis([^t]|$);A:/Teeworlds-InfPlus/configur([^e]|$);A:/Teeworlds-InfPlus/license\\.([^t]|$);A:/Teeworlds-InfPlus/readme\\.t([^x]|$);A:/Teeworlds-InfPlus/storage\\.([^c]|$);A:/Teeworlds-InfPlus/CMakeList([^s]|$);A:/Teeworlds-InfPlus/configure([^.]|$);A:/Teeworlds-InfPlus/license\\.t([^x]|$);A:/Teeworlds-InfPlus/readme\\.tx([^t]|$);A:/Teeworlds-InfPlus/storage\\.c([^f]|$);A:/Teeworlds-InfPlus/CMakeLists([^.]|$);A:/Teeworlds-InfPlus/configure\\.([^l]|$);A:/Teeworlds-InfPlus/license\\.tx([^t]|$);A:/Teeworlds-InfPlus/storage\\.cf([^g]|$);A:/Teeworlds-InfPlus/CMakeLists\\.([^t]|$);A:/Teeworlds-InfPlus/configure\\.l([^u]|$);A:/Teeworlds-InfPlus/CMakeLists\\.t([^x]|$);A:/Teeworlds-InfPlus/configure\\.lu([^a]|$);A:/Teeworlds-InfPlus/CMakeLists\\.tx([^t]|$)")
set(CPACK_SOURCE_OUTPUT_CONFIG_FILE "A:/Teeworlds-InfPlus/build/CPackSourceConfig.cmake")
set(CPACK_SOURCE_PACKAGE_FILE_NAME "teeworlds-0.6.5-src")
set(CPACK_STRIP_FILES "TRUE")
set(CPACK_SYSTEM_NAME "win32")
set(CPACK_THREADS "1")
set(CPACK_TOPLEVEL_TAG "win32")
set(CPACK_WIX_SIZEOF_VOID_P "4")

if(NOT CPACK_PROPERTIES_FILE)
  set(CPACK_PROPERTIES_FILE "A:/Teeworlds-InfPlus/build/CPackProperties.cmake")
endif()

if(EXISTS ${CPACK_PROPERTIES_FILE})
  include(${CPACK_PROPERTIES_FILE})
endif()
