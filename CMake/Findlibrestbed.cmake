include(~/library)

find_library(
	RESTBED_LIBRARY
	NAMES librestbed
	HINTS ~/library/
	# PATH_SUFFIXES test
)

find_path(
	RESTBED_INCLUDE_DIR
	NAMES restbed.h
	HINTS ~/include/ ${CMAKE_INSTALL_INCLUDEDIR}
	# PATH_SUFFIXES test
)

include(FindPackageHandleStandardArgs)

find_package_handle_standard_args(
	restbed DEFAULT_MSG
	RESTBED_LIBRARY
	RESTBED_INCLUDE_DIR
)

mark_as_advanced(RESTBED_LIBRARY RESTBED_INCLUDE_DIR)

if(RESTBED_FOUND AND NOT TARGET restbed)
	add_library(restbed SHARED IMPORTED)
	set_target_properties(
		restbed
		PROPERTIES
		INTERFACE_INCLUDE_DIRECTORIES "${RESTBED_INCLUDE_DIR}"
		IMPORTED_LOCATION ${RESTBED_LIBRARY}
	)
endif()
