Set-Location $PSScriptRoot/../
if (Test-Path -Path build) {
    Remove-Item -Recurse build
}
$Env:CMAKE_TOOLCHAIN_FILE = "D:/src/vcpkg/scripts/buildsystems/vcpkg.cmake"
$Env:glfw3_DIR = "D:/src/vcpkg/packages/glfw3_x64-windows-static/share/glfw3/"
$Env:glad_DIR = "D:/src/vcpkg/packages/glad_x64-windows-static/share/glad/"
$Env:assimp_DIR = "D:/src/vcpkg/packages/assimp_x64-windows-static/share/assimp/"

cmake -B build -G "Ninja"
cmake --build build

