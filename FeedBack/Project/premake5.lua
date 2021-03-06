solution "FeedBack"
	configurations { "Debug", "DebugOpt", "Release", "Retail" }
--	platforms { "Native", "x32", "x64", "Xbox360", "PS3" }
--	platforms { "Native", "Xbox" }
	platforms { "x64" }

	-- include the fuji project...
	dofile  "../../Fuji/Fuji/Project/fujiproj.lua"

	project "FeedBack"
		kind "WindowedApp"
		language "C++"
		files { "../Source/**.h", "../Source/**.cpp" }
		files { "../Themes/**.ini" }

		includedirs { "../Source/" }
		objdir "../Build/"
		targetdir "../"

		flags { "StaticRuntime", "WinMain" }
		exceptionhandling "Off"
		rtti "Off"

		links { "Fuji" }

		dofile "../../Fuji/dist/Project/fujiconfig.lua"

		configuration { "windows" }
			links { "FujiMiddleware.lib" }
