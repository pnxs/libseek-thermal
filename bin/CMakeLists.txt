
add_executable(seek_test_pro seek_test_pro.cpp)
target_link_libraries(seek_test_pro libseek)

add_executable(seek_test seek_test.cpp)
target_link_libraries(seek_test libseek)

add_executable(seek_viewer seek_viewer.cpp)
target_link_libraries(seek_viewer libseek)

add_executable(seek_create_flat_field seek_create_flat_field.cpp)
target_link_libraries(seek_create_flat_field libseek Boost::program_options)

