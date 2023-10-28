project(CalculatorAPI)

add_executable(CalculatorAPI main.cpp CalcResourceFactory.cpp CalcService.cpp CalcServiceSettingsFactory.cpp)

target_link_libraries(CalculatorAPI restbed)

target_include_directories(CalculatorAPI PUBLIC ${CMAKE_SRC_DIR}/include)

set_property(TARGET CalculatorAPI PROPERTY CXX_STANDARD 17)
