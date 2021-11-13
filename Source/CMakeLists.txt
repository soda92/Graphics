project (Graphics_Lib)
cmake_minimum_required(VERSION "3.16")

set(CXX_STANDARD 23)
set(CXX_STANDARD_REQUIRED ON)
# find_package(fmt CONFIG REQUIRED)

set(CMAKE_INCLUDE_CURRENT_DIR ON)
set (PROJECT_SOURCES 
    "CommandBuffer.cpp"
    "CommandBuffer.h"
    "CommandQueue.cpp"
    "CommandQueue.h"
    "Format.h"
    "Graphics.h"
    "IndexBuffer.cpp"
    "IndexBuffer.h"
    "Material.cpp"
    "Material.h"
    "Mesh.cpp"
    "Mesh.h"
    # "Model.cpp"
    # "Model.h"
    "Program.cpp"
    "Program.h"
    "Renderer.cpp"
    "Renderer.h"
    "Shader.cpp"
    "Shader.h"
    "Texture.cpp"
    "Texture.h"
    "VertexBuffer.cpp"
    "VertexBuffer.h"
    "VertexFormat.cpp"
    "VertexFormat.h"
    # "Window.cpp"
)
# set(glfw3_DIR "D:/src/vcpkg/packages/glfw3_x64-windows-static/share/glfw3/")
# set(glad_DIR "D:/src/vcpkg/packages/glad_x64-windows-static/share/glad/")
# set(assimp_DIR "D:/src/vcpkg/packages/assimp_x64-windows-static/share/assimp/")

find_package(assimp CONFIG REQUIRED)
find_package(glfw3 CONFIG REQUIRED)
find_package(glad CONFIG REQUIRED)

include_directories(../ThirdParty/Math/include)
# include_directories(../ThirdParty/glad/include)
# include_directories(../ThirdParty/glfw/include)
# include_directories(../ThirdParty/assimp/include)
include_directories(../ThirdParty/glslang/include)
include_directories(../ThirdParty/meshoptimizer/src)
include_directories(../ThirdParty/shaderc/include)
include_directories(../ThirdParty/SPIRV-Headers/include)
include_directories(../ThirdParty/SPIRV-Tools/include)
include_directories(../ThirdParty/stb)
include_directories(../ThirdParty/Vulkan-Headers/include)
include_directories(../ThirdParty/Vulkan-Headers/include)

include_directories(Core OpenGL Vulkan)
# target_link_libraries(Graphics PRIVATE fmt::fmt)

add_library(Graphics STATIC ${PROJECT_SOURCES})
set_property(TARGET Graphics PROPERTY
  MSVC_RUNTIME_LIBRARY "MultiThreaded$<$<CONFIG:Debug>:Debug>")
set_target_properties(Graphics PROPERTIES LANGUAGE CXX)
set_property(TARGET Graphics PROPERTY CXX_STANDARD 23)
set_property(TARGET Graphics PROPERTY CXX_STANDARD_REQUIRED ON)

# find_path(STB_INCLUDE_DIRS "stb.h")
# target_include_directories(Graphics PRIVATE ${STB_INCLUDE_DIRS})

add_subdirectory(OpenGL)
add_subdirectory(Core)
add_subdirectory(Vulkan)

target_link_libraries(Graphics PRIVATE glfw glad::glad assimp::assimp)
