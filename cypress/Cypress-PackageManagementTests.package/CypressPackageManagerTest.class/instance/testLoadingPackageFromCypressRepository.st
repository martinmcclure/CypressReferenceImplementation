"
notice: Copyright 2013,2016 GemTalk Systems, LLC. Open source under the MIT license.
category: tests
"
testLoadingPackageFromCypressRepository

	| repo new summary |
	currentManager := self createEmptyManager.
	repo := self createTestRepoNamed: 'CypressTestRepo'.
	self createFilesFor: self cypressFormatXYPackageDirectoryStructure.
	self assert: repo packageNames asSet equals: #('X-Y') asSet.
	currentManager lookForPackagesInRepository: repo.
	new := currentManager packageInformationNamed: 'X-Y'.
	[summary := currentManager loadPackageFrom: new inRepository: repo]
		ensure: 
			[self classToCleanUpNamed: 'XYClass' from: UserGlobals.
			self methodToCleanUp: (Object compiledMethodAt: #isXY).
			self categoryToCleanUp: '*X-Y' from: Object].
	self
		assert: summary isEmpty
			description: 'This package should have loaded without problems';
		assert: (UserGlobals includesKey: #XYClass)
			description: 'Should have loaded class named XYClass';
		assert: (Object includesCategory: '*X-Y')
			description: 'Should have loaded a method into *X-Y-testing category on Object';
		assert: (Object includesSelector: #isXY)
			description: 'Should have loaded the method Object>>#isXY';
		assert: (Object selectorsIn: '*X-Y') asSet equals: (Set with: #isXY)