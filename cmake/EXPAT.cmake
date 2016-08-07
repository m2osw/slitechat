# -*- cmake -*-
if( STANDALONE )
	include( FindEXPAT )
else( STANDALONE )
	if (WINDOWS)
		set(EXPAT_LIBRARIES_BASENAME libexpatMT.lib)
		set(EXPAT_LIBRARIES 
		  optimized ${ARCH_PREBUILT_DIRS_RELEASE}/${EXPAT_LIBRARIES_BASENAME}
		  debug ${ARCH_PREBUILT_DIRS_DEBUG}/${EXPAT_LIBRARIES_BASENAME} )
	else (WINDOWS)
		set(EXPAT_LIBRARIES expat)
	endif (WINDOWS)

	set(EXPAT_INCLUDE_DIRS ${LIBS_PREBUILT_DIR}/include)
endif( STANDALONE )