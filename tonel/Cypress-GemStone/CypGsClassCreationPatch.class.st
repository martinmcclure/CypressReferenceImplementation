"
No class-specific documentation for CypGsClassCreationPatch, hierarchy is: 
Object
  CypGsPatch
    CypGsClassPatch( classDefinition packageDefinition)
      CypGsClassCreationPatch

"
Class {
	#name : 'CypGsClassCreationPatch',
	#superclass : 'CypGsClassPatch',
	#category : 'Cypress-GemStone'
}

{ #category : 'private' }
CypGsClassCreationPatch >> basicCreateClassFor: aPatchSet [

	| type oldVersion superclass createdClass |
	type := classDefinition classType.
	oldVersion := self oldClassVersion.
	superclass := aPatchSet superclassNamed: classDefinition superclassName.
	createdClass := type = 'normal'
				ifTrue: 
					[superclass
						subclass: classDefinition key
						instVarNames: (classDefinition propertyAt: 'instvars')
						classVars: (classDefinition propertyAt: 'classvars')
						classInstVars: (classDefinition propertyAt: 'classinstvars')
						poolDictionaries: (classDefinition propertyAt: 'pools')
						inDictionary: nil
						newVersionOf: oldVersion
						description: (classDefinition propertyAt: 'comment' ifAbsent: [''])
						options: (classDefinition propertyAt: 'gs_options' ifAbsent: [#()])]
				ifFalse: 
					[type = 'variable'
						ifTrue: 
							[superclass
								indexableSubclass: classDefinition key
								instVarNames: (classDefinition propertyAt: 'instvars')
								classVars: (classDefinition propertyAt: 'classvars')
								classInstVars: (classDefinition propertyAt: 'classinstvars')
								poolDictionaries: (classDefinition propertyAt: 'pools')
								inDictionary: nil
								newVersionOf: oldVersion
								description: (classDefinition propertyAt: 'comment' ifAbsent: [''])
								options: (classDefinition propertyAt: 'gs_options' ifAbsent: [#()])]
						ifFalse: 
							[type = 'bytes'
								ifTrue: 
									[(classDefinition propertyAt: 'instvars') isEmpty
										ifFalse: [self error: 'Cannot define byte class with named instvars.'].
									superclass
										byteSubclass: classDefinition key
										classVars: (classDefinition propertyAt: 'classvars')
										classInstVars: (classDefinition propertyAt: 'classinstvars')
										poolDictionaries: (classDefinition propertyAt: 'pools')
										inDictionary: nil
										newVersionOf: oldVersion
										description: (classDefinition propertyAt: 'comment' ifAbsent: [''])
										options: (classDefinition propertyAt: 'gs_options' ifAbsent: [#()])]
								ifFalse: [self error: 'Unknown class type']]].
	^createdClass
]

{ #category : 'actions' }
CypGsClassCreationPatch >> createClassFor: aPatchSet [

	| createdClass |
	createdClass := self privateCreateClassFor: aPatchSet.
	aPatchSet createdClass: createdClass.
	^createdClass
]

{ #category : 'private' }
CypGsClassCreationPatch >> privateCreateClassFor: aPatchSet [

	| classProperties packageName infoSource category createdClass |
	createdClass := self basicCreateClassFor: aPatchSet.
	classProperties := classDefinition properties.
	packageName := packageDefinition key.
	infoSource := Cypress configuration packageInfoSource.
	category := infoSource == #Category
				ifTrue: [packageName]
				ifFalse: [classProperties at: 'category' ifAbsent: ['']].
	createdClass category: category.
	^createdClass
]