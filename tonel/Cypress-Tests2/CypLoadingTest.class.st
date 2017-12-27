"
No class-specific documentation for CypLoadingTest, hierarchy is: 
Object
  TestAsserter
    TestCase( testSelector)
      CypLoadingTest

"
Class {
	#name : 'CypLoadingTest',
	#superclass : 'TestCase',
	#category : 'Cypress-Tests2'
}

{ #category : 'running' }
CypLoadingTest class >> debug [

	^self allTestSelectors do: [:selector | self debug: selector]
]

{ #category : 'running' }
CypLoadingTest class >> run [

	^self suite run
]

{ #category : 'support-definitionBuilding' }
CypLoadingTest >> accessorMethodsForSimpleClassNamed: name [

	| result |
	result := Dictionary new.
	
	{'iv1In' , name.
	'iv2In' , name} do: 
				[:ivName |
				result
					at: ivName
						put: (CypMethodDefinition
								withProperties: (Dictionary with: 'selector' -> ivName
										with: 'protocol' -> 'accessing')
								source: ivName , ' ^' , ivName);
					at: ivName , ':'
						put: (CypMethodDefinition
								withProperties: (Dictionary with: 'selector' -> (ivName , ':')
										with: 'protocol' -> 'accessing')
								source: ivName , ': anObject ' , ivName , ' := anObject')].
	^result
]

{ #category : 'support' }
CypLoadingTest >> applyDiffToImage: aPackageSetModification [

	Cypress image applyModification: aPackageSetModification
]

{ #category : 'support' }
CypLoadingTest >> assertAbsenceOfPackage: packageName [

	| loadedPackage |
	loadedPackage := Cypress loadedPackageNamed: packageName ifAbsent: [nil].
	self assert: loadedPackage equals: nil
]

{ #category : 'support-definitionBuilding' }
CypLoadingTest >> definitionOfSimpleClassNamed: name [

	^CypClassDefinition
		withProperties: (self propertiesForSimpleClassNamed: name)
		classMethodDefinitions: (self sillyClassMethodsForClassNamed: name)
		instanceMethodDefinitions: (self accessorMethodsForSimpleClassNamed: name)
]

{ #category : 'support' }
CypLoadingTest >> definitionsOfLoadedPackages: packageNames [

	^(Cypress loadedPackagesNamed: packageNames) asDefinition
]

{ #category : 'subtests' }
CypLoadingTest >> loadInitialPackages [

	| packageNames myPackageSet imagePackageSet1 diff1 imagePackageSet2 diff2 |
	Cypress updateLoadedPackages.
	packageNames := #('TestPackage1' 'TestPackage2').
	packageNames do: [:name | self assertAbsenceOfPackage: name].
	imagePackageSet1 := self definitionsOfLoadedPackages: packageNames.
	myPackageSet := CypPackageSetDefinition new.
	myPackageSet
		addPackage: self package1Definition;
		addPackage: self package2Definition.
	diff1 := myPackageSet compareAgainstBase: imagePackageSet1.
	self deny: diff1 isEmpty.
	self applyDiffToImage: diff1.
	imagePackageSet2 := self definitionsOfLoadedPackages: packageNames.
	diff2 := myPackageSet compareAgainstBase: imagePackageSet2.
	self assert: diff2 isEmpty
]

{ #category : 'support-definitionBuilding' }
CypLoadingTest >> package1Definition [

	^CypPackageDefinition
		withProperties: (Dictionary with: 'name' -> 'TestPackage1')
		classDefinitions: (Dictionary
				with: 'TestClass1' -> (self definitionOfSimpleClassNamed: 'TestClass1'))
		classExtensions: Dictionary new
]

{ #category : 'support-definitionBuilding' }
CypLoadingTest >> package2Definition [

	^CypPackageDefinition
		withProperties: (Dictionary with: 'name' -> 'TestPackage2')
		classDefinitions: (Dictionary
				with: 'TestClass2' -> (self definitionOfSimpleClassNamed: 'TestClass2'))
		classExtensions: Dictionary new
]

{ #category : 'support-definitionBuilding' }
CypLoadingTest >> propertiesForSimpleClassNamed: className [

	| dict |
	dict := Dictionary new.
	dict
		at: 'category' put: 'CypressTestData';
		at: 'classinstvars' put: Array new;
		at: 'classvars' put: Array new;
		at: 'comment'
			put: 'I am a class generated by Cypress tests. My name is ' , className
					, ', what''s yours?';
		at: 'gs_SymbolDictionary' put: 'CypressTestData';
		at: 'instvars'
			put: (Array with: 'iv1In' , className with: 'iv2In' , className);
		at: 'name' put: className;
		at: 'pools' put: Array new;
		at: 'super' put: 'Object';
		at: 'type' put: 'normal'.
	^dict
]

{ #category : 'support' }
CypLoadingTest >> setUp [

	"Remove the CypressTestData symbol dictionary, if present"

	| user symList dict index |
	user := System myUserProfile.
	symList := user symbolList.
	dict := symList objectNamed: #CypressTestData.
	dict
		ifNotNil: 
			[index := user symbolList indexOf: dict.
			index > 0 ifTrue: [user removeDictionaryAt: index]]
]

{ #category : 'support-definitionBuilding' }
CypLoadingTest >> sillyClassMethodsForClassNamed: name [

	^Dictionary
		with: 'sillyMessage' -> (CypMethodDefinition
						withProperties: (Dictionary with: 'selector' -> 'sillyMessage'
								with: 'protocol' -> 'silliness')
						source: 'sillyMessage
	^ ''You have sent a silly message to the class '' , name')
]

{ #category : 'tests' }
CypLoadingTest >> testLoading [

	self loadInitialPackages
]