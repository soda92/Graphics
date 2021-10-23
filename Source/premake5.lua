-- Copyright 2021 SMS
-- License(Apache-2.0)

project "Source"
  kind "StaticLib"
  language "C++"
  cppdialect "C++latest"
  staticruntime "on"

  targetdir("%{wks.location}/build/" .. outputdir .. "/%{prj.name}/lib")
  objdir("%{wks.location}/build/" .. outputdir .. "/%{prj.name}/obj")

  files {"**.cpp", "**.hpp", "**.h", "**.inl", "premake5.lua"}

  includedirs {
    "%{thirdparty.assimp}/include",
    "%{thirdparty.vulkan}/include"}

  links {
    -- "GLAD",
    -- "GLFW",
    -- "%{thirdparty.openal}/lib/openal32",
    "%{thirdparty.vulkan}/lib/vulkan-1"}