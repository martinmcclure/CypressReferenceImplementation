"
notice: Copyright 2013,2016 GemTalk Systems, LLC. Open source under the MIT license.
category: initializing
"
initializeUrl: anUrl

	super initializeUrl: anUrl.
	disk := CypFileUtilities current.
	self initializeRepositoryDirectory.
	self readPropertiesFile