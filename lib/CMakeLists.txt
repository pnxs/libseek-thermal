
add_library(libseek
    SeekCam.cpp
    SeekDevice.cpp
    SeekThermal.cpp
    SeekThermalPro.cpp
)

target_link_libraries(libseek Libusb::Libusb ${OpenCV_LIBS})
target_include_directories(libseek
    PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}
)
