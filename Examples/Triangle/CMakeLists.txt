cmake_minimum_required(VERSION "3.16")
project(Triangle)

# set(glfw3_DIR "D:/src/vcpkg/packages/glfw3_x64-windows-static/share/glfw3/")
# set(glad_DIR "D:/src/vcpkg/packages/glad_x64-windows-static/share/glad/")
# set(assimp_DIR "D:/src/vcpkg/packages/assimp_x64-windows-static/share/assimp/")

find_package(glad CONFIG REQUIRED)
find_package(assimp CONFIG REQUIRED)

include_directories(../../Source)
include_directories(../../Source/Core)
include_directories(../../Source/OpenGL)
include_directories(../../Source/Vulkan)

include_directories(../../ThirdParty/Math/include)
include_directories(../../ThirdParty/glad/include)
include_directories(../../ThirdParty/glfw/include)
# include_directories(../../ThirdParty/assimp/include)
include_directories(../../ThirdParty/glslang/include)
include_directories(../../ThirdParty/meshoptimizer/src)
include_directories(../../ThirdParty/shaderc/include)
include_directories(../../ThirdParty/SPIRV-Headers/include)
include_directories(../../ThirdParty/SPIRV-Tools/include)
include_directories(../../ThirdParty/stb)
include_directories(../../ThirdParty/stb/deprecated)
include_directories(../../ThirdParty/Vulkan-Headers/include)
include_directories(../../ThirdParty/Vulkan-Headers/include)

add_executable(main main.cpp)
set_property(TARGET main PROPERTY
  MSVC_RUNTIME_LIBRARY "MultiThreaded$<$<CONFIG:Debug>:Debug>")
set_property(TARGET main PROPERTY CXX_STANDARD 23)
set_property(TARGET main PROPERTY CXX_STANDARD_REQUIRED ON)
# add_subdirectory(../../Source build)
target_link_libraries(main PRIVATE assimp::assimp Graphics glad::glad)

file(COPY Shaders DESTINATION ".")
