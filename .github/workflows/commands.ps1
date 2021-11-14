Set-Location $PSScriptRoot/../../
if (Test-Path -Path build) {
    Remove-Item -Recurse build
}
$Env:CMAKE_TOOLCHAIN_FILE = "C:/vcpkg/scripts/buildsystems/vcpkg.cmake"
# $Env:glfw3_DIR = "C:/vcpkg/packages/glfw3_x64-windows-static-release/share/glfw3/"
# $Env:glad_DIR = "C:/vcpkg/packages/glad_x64-windows-static-release/share/glad/"
# $Env:assimp_DIR = "C:/vcpkg/packages/assimp_x64-windows-static-release/share/assimp/"

$Env:glfw3_DIR = "C:/vcpkg/installed/x64-windows-static-release/share/glfw3/"
$Env:glad_DIR = "C:/vcpkg/installed/x64-windows-static-release/share/glad/"
$Env:assimp_DIR = "C:/vcpkg/installed/x64-windows-static-release/share/assimp/"
$Env:irrlicht_DIR = "C:/vcpkg/installed/x64-windows-static-release/share/irrlicht/"
$Env:polyclipping_DIR = "C:/vcpkg/installed/x64-windows-static-release/share/polyclipping/"
$Env:minizip_DIR = "C:/vcpkg/installed/x64-windows-static-release/share/minizip/"
$Env:kubazip_DIR = "C:/vcpkg/installed/x64-windows-static-release/share/kubazip/"
$Env:poly2tri_DIR = "C:/vcpkg/installed/x64-windows-static-release/share/poly2tri/"
$Env:utf8cpp_DIR = "C:/vcpkg/installed/x64-windows-static-release/share/utf8cpp/"


# "C:/vcpkg/installed/x64-windows-static-release/share/glad/gladConfig.cmake"
# "C:/vcpkg/installed/x64-windows-static-release/share/glfw3/glfw3Config.cmake"
# "C:/vcpkg/installed/x64-windows-static-release/share/assimp/assimpConfig.cmake"

cmake -B build -G "Ninja"
cmake --build build
