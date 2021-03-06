"
notice: Copyright 2013,2016 GemTalk Systems, LLC. Open source under the MIT license.
category: utility
"
unloadableDefinitions

	^{
		CypressClassDefinition
			name: 'UnloadableClass'
			superclassName: 'NonExistentClass'
			category: 'Cypress-Mocks'
			instVarNames: #()
			classInstVarNames: #()
			classVarNames: #()
			poolDictionaryNames: #()
			comment: 'This class depends on a class that is intended to be missing.'
			subclassType: ''.
		CypressMethodDefinition
			className: 'UnloadableClass'
			classIsMeta: false
			selector: 'unloadable'
			category: 'accessing'
			source: 'unloadable
	"This method cannot be loaded because the class cannot be."'.
		CypressMethodDefinition
			className: 'AnotherNonExistentClass'
			classIsMeta: false
			selector: 'unloadable'
			category: 'accessing'
			source: 'unloadable
	"This method cannot be loaded because the class cannot be."'.
	}
