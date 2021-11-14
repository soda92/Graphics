Set-Location C:/
if (Test-Path -Path build) {
    Remove-Item -Recurse vcpkg
}
git clone https://github.com/microsoft/vcpkg.git
Set-Location C:/vcpkg
./bootstrap-vcpkg.bat
