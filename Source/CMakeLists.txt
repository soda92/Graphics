project (Graphics_Lib)
cmake_minimum_required(VERSION "3.16")

set(CXX_STANDARD 20)
set(CXX_STANDARD_REQUIRED ON)
set(CMAKE_INCLUDE_CURRENT_DIR ON)
set (PROJECT_SOURCES 
    "Graphics.h"
    "IndexBuffer.cpp"
    "IndexBuffer.h"
    "CommandBuffer.cpp"
    "CommandBuffer.h"
    "CommandQueue.cpp"
    "CommandQueue.h"
)

include_directories(../ThirdParty/Math/include)
include_directories(../ThirdParty/glad/include)
include_directories(../ThirdParty/glfw/include)
include_directories(../ThirdParty/assimp/include)
include_directories(../ThirdParty/glslang/include)
include_directories(../ThirdParty/meshoptimizer/include)
include_directories(../ThirdParty/shaderc/include)
include_directories(../ThirdParty/SPIRV-Headers/include)
include_directories(../ThirdParty/SPIRV-Tools/include)
include_directories(../ThirdParty/stb/include)
include_directories(../ThirdParty/Vulkan-Headers/include)
include_directories(../ThirdParty/Vulkan-Headers/include)

add_library(Graphics ${PROJECT_SOURCES})
add_subdirectory(OpenGL)
add_subdirectory(Vulkan)
set_target_properties(Graphics PROPERTIES LANGUAGE CXX)
