Set-Location $PSScriptRoot/../../ 
$packages = `
"glfw3:x64-windows-static-release",
"glad:x64-windows-static-release",
"assimp:x64-windows-static-release"

C:/vcpkg/vcpkg.exe upgrade `
--overlay-triplets="triplets_overlay" `
--no-dry-run

C:/vcpkg/vcpkg.exe install `
--overlay-triplets="triplets_overlay" `
--clean-after-build `
$packages

C:/vcpkg/vcpkg.exe install zlib:x64-windows
