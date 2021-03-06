building
buildMacOSX32 
	"Build with freetype, cairo, osprocess"
	CogNativeBoostPlugin setTargetPlatform: #Mac32PlatformId.
	
	PharoOSXConfig new  
		"generateForDebug;"
		addExternalPlugins: #( FT2Plugin SDL2DisplayPlugin );
		addInternalPlugins: #( UnixOSProcessPlugin );
		addThirdpartyLibraries: #(
			'cairo' 
			'libgit2'
			'libssh2'
			'libsdl2');
		generateSources; 
		generate.
