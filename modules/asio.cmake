if(NOT TARGET asio)

  # Module library
  add_library(asio "asio/asio/src/asio.cpp")
  target_compile_definitions(asio PRIVATE ASIO_STANDALONE ASIO_SEPARATE_COMPILATION)
  target_include_directories(asio PRIVATE "asio/asio/include")
  target_link_libraries(asio)

  # Module folder
  set_target_properties(asio PROPERTIES FOLDER modules/asio)

endif()
