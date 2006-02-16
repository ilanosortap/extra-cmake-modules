FIND_PACKAGE(GNUWIN32)

FIND_PATH(ZLIB_INCLUDE_DIR zlib.h
/usr/include
/usr/local/include
${GNUWIN32_DIR}/include
)

FIND_LIBRARY(ZLIB_LIBRARY NAMES z zlib
PATHS
/usr/lib
/usr/local/lib
${GNUWIN32_DIR}/lib
)


IF(ZLIB_INCLUDE_DIR)
   SET(ZLIB_FOUND TRUE)
ENDIF(ZLIB_INCLUDE_DIR)


IF(ZLIB_FOUND)
   IF(NOT ZLIB_FIND_QUIETLY)
      MESSAGE(STATUS "Found Z: ${ZLIB_LIBRARY}")
   ENDIF(NOT ZLIB_FIND_QUIETLY)
ELSE(ZLIB_FOUND)
   IF(ZLIB_FIND_REQUIRED)
      MESSAGE(FATAL_ERROR "Could not find z library")
   ENDIF(ZLIB_FIND_REQUIRED)
ENDIF(ZLIB_FOUND)
