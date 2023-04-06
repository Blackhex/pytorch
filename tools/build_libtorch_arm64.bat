@echo on

del build\* /s /q

set VSDEVCMD_ARCH=x64_arm64
set CMAKE_TOOLCHAIN_FILE=cmake\Toolchains\msvc2022-x64-arm64.cmake
set USE_HOST_PROTOC=1
set PROTOC=%CONDA_HOME%\Library\bin\protoc.exe

call "C:\Program Files\Microsoft Visual Studio\2022\Enterprise\VC\Auxiliary\Build\vcvarsall.bat" %VSDEVCMD_ARCH%

python tools\build_libtorch.pygit 