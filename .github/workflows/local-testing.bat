cd /D "%~dp0/../../"
pwsh .github/workflows/local-testing-install-vcpkg.ps1
pwsh .github/workflows/installation.ps1

call "C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Auxiliary\Build\vcvars64.bat"
pwsh .github/workflows/commands.ps1
pwsh Scripts/run.ps1
