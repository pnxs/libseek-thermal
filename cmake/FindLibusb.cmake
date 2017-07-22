find_path(Libusb_INCLUDE_DIR 
    NAMES 
        libusb.h
    PATH_SUFFIXES
        libusb-1.0
)
find_library(Libusb_LIBRARY usb-1.0)
mark_as_advanced(Libusb_INCLUDE_DIR Libusb_LIBRARY)

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(Libusb
        REQUIRED_VARS Libusb_INCLUDE_DIR Libusb_LIBRARY
)

if (Libusb_FOUND AND NOT TARGET Libusb::Libusb)
    add_library(Libusb::Libusb UNKNOWN IMPORTED)
    set_target_properties(Libusb::Libusb PROPERTIES
            IMPORTED_LOCATION "${Libusb_LIBRARY}"
            INTERFACE_INCLUDE_DIRECTORIES "${Libusb_INCLUDE_DIR}"
            )
endif()

