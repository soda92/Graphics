Set-Location $PSScriptRoot/../../
if (Test-Path -Path build) {
    Remove-Item -Recurse build
}
$Env:CMAKE_TOOLCHAIN_FILE = "C:/vcpkg/scripts/buildsystems/vcpkg.cmake"
$Env:glfw3_DIR = "C:/vcpkg/packages/glfw3_x64-windows-static/share/glfw3/"
$Env:glad_DIR = "C:/vcpkg/packages/glad_x64-windows-static/share/glad/"
$Env:assimp_DIR = "C:/vcpkg/packages/assimp_x64-windows-static/share/assimp/"

cmake -B build -G "Ninja"
cmake --build build
