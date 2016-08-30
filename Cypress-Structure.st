SystemOrganization addCategory: 'Cypress-Structure'!

Error subclass: #CypressJsonError
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cypress-Structure'!

!Dictionary methodsFor: '*Cypress-Structure' stamp: ''!
asCypressPropertyObject

!Dictionary methodsFor: '*Cypress-Structure' stamp: ''!
writeCypressJsonOn: aStream indent: startIndent

!Number methodsFor: '*Cypress-Structure' stamp: ''!
writeCypressJsonOn: aStream indent: startIndent

!String methodsFor: '*Cypress-Structure' stamp: ''!
asCypressPropertyObject

!String methodsFor: '*Cypress-Structure' stamp: ''!
writeCypressJsonOn: aStream indent: startIndent

!Array methodsFor: '*Cypress-Structure' stamp: ''!
asCypressPropertyObject

!Array methodsFor: '*Cypress-Structure' stamp: ''!
writeCypressJsonOn: aStream indent: startIndent

Object subclass: #CypressJsonParser
	instanceVariableNames: 'stream'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cypress-Structure'!

!CypressJsonParser class methodsFor: 'instance creation' stamp: ''!
new

!CypressJsonParser class methodsFor: 'instance creation' stamp: ''!
on: aStream

!CypressJsonParser class methodsFor: 'accessing' stamp: ''!
parse: aString

!CypressJsonParser class methodsFor: 'accessing' stamp: ''!
parseStream: aStream

!CypressJsonParser methodsFor: 'adding' stamp: ''!
addProperty: anAssociation to: anObject

!CypressJsonParser methodsFor: 'adding' stamp: ''!
addValue: anObject to: aCollection

!CypressJsonParser methodsFor: 'creating' stamp: ''!
createArray

!CypressJsonParser methodsFor: 'creating' stamp: ''!
createFalse

!CypressJsonParser methodsFor: 'creating' stamp: ''!
createNull

!CypressJsonParser methodsFor: 'creating' stamp: ''!
createObject

!CypressJsonParser methodsFor: 'creating' stamp: ''!
createProperty: aKey with: aValue

!CypressJsonParser methodsFor: 'creating' stamp: ''!
createString: aString

!CypressJsonParser methodsFor: 'creating' stamp: ''!
createTrue

!CypressJsonParser methodsFor: 'private' stamp: ''!
expect: aString

!CypressJsonParser methodsFor: 'initialization' stamp: ''!
initializeOn: aStream

!CypressJsonParser methodsFor: 'private' stamp: ''!
match: aString

!CypressJsonParser methodsFor: 'parsing' stamp: ''!
parse

!CypressJsonParser methodsFor: 'parsing' stamp: ''!
parseArray

!CypressJsonParser methodsFor: 'parsing-internal' stamp: ''!
parseCharacter

!CypressJsonParser methodsFor: 'parsing-internal' stamp: ''!
parseCharacterHex

!CypressJsonParser methodsFor: 'parsing-internal' stamp: ''!
parseCharacterHexDigit

!CypressJsonParser methodsFor: 'parsing-internal' stamp: ''!
parseNumber

!CypressJsonParser methodsFor: 'parsing-internal' stamp: ''!
parseNumberExponent

!CypressJsonParser methodsFor: 'parsing-internal' stamp: ''!
parseNumberFraction

!CypressJsonParser methodsFor: 'parsing-internal' stamp: ''!
parseNumberInteger

!CypressJsonParser methodsFor: 'parsing' stamp: ''!
parseObject

!CypressJsonParser methodsFor: 'parsing-internal' stamp: ''!
parseProperty

!CypressJsonParser methodsFor: 'parsing-internal' stamp: ''!
parseString

!CypressJsonParser methodsFor: 'parsing' stamp: ''!
parseValue

!CypressJsonParser methodsFor: 'private' stamp: ''!
whitespace

Object subclass: #GsGeneralDependencySorter
	instanceVariableNames: 'candidates dependsOnConverter dependentConverter individualDependencyMap dependencyGraphs candidateAliasMap'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cypress-Structure'!

!GsGeneralDependencySorter class methodsFor: 'instance creation' stamp: ''!
on: someCandidates dependsOn: aOneArgBlock dependent: anotherOneArgBlock

!GsGeneralDependencySorter methodsFor: 'sorting - private' stamp: ''!
determineGraphRoots

!GsGeneralDependencySorter methodsFor: 'initializing - private' stamp: ''!
initializeOn: someCandidates dependsOn: aOneArgBlock dependent: anotherOneArgBlock

!GsGeneralDependencySorter methodsFor: 'sorting' stamp: ''!
inOrder

!GsGeneralDependencySorter methodsFor: 'sorting - private' stamp: ''!
mapCandidatesIntoGraphs

!GsGeneralDependencySorter methodsFor: 'sorting - private' stamp: ''!
transcribeGraph: subtree into: sorted

!Object methodsFor: '*Cypress-Structure' stamp: ''!
asCypressPropertyObject

!Object methodsFor: '*Cypress-Structure' stamp: ''!
writeCypressJsonOn: fileStream

!Boolean methodsFor: '*Cypress-Structure' stamp: ''!
writeCypressJsonOn: aStream indent: startIndent

CypressObject subclass: #CypressStructure
	instanceVariableNames: 'name properties packageStructure'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cypress-Structure'!

CypressStructure subclass: #CypressClassStructure
	instanceVariableNames: 'instanceMethods classMethods comment isClassExtension'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cypress-Structure'!

!CypressClassStructure class methodsFor: 'instance creation' stamp: ''!
fromClassDefinition: classDefinition

!CypressClassStructure methodsFor: 'converting' stamp: ''!
asCypressClassDefinition

!CypressClassStructure methodsFor: 'accessing' stamp: ''!
category

!CypressClassStructure methodsFor: 'accessing' stamp: ''!
category: aString

!CypressClassStructure methodsFor: 'accessing' stamp: ''!
classInstanceVariableNames

!CypressClassStructure methodsFor: 'accessing' stamp: ''!
classInstanceVariableNames: someStrings

!CypressClassStructure methodsFor: 'converting' stamp: ''!
classInstanceVariablesString

!CypressClassStructure methodsFor: 'querying' stamp: ''!
classMethodNamed: methodName

!CypressClassStructure methodsFor: 'accessing' stamp: ''!
classMethods

!CypressClassStructure methodsFor: 'accessing' stamp: ''!
className

!CypressClassStructure methodsFor: 'accessing' stamp: ''!
classVariableNames

!CypressClassStructure methodsFor: 'accessing' stamp: ''!
classVariableNames: someStrings

!CypressClassStructure methodsFor: 'converting' stamp: ''!
classVariablesString

!CypressClassStructure methodsFor: 'accessing' stamp: ''!
comment

!CypressClassStructure methodsFor: 'accessing' stamp: ''!
comment: aString

!CypressClassStructure methodsFor: 'initialization' stamp: ''!
fromClassDefinition: classDefinition

!CypressClassStructure methodsFor: 'querying' stamp: ''!
instanceMethodNamed: methodName

!CypressClassStructure methodsFor: 'accessing' stamp: ''!
instanceMethods

!CypressClassStructure methodsFor: 'accessing' stamp: ''!
instanceVariableNames

!CypressClassStructure methodsFor: 'accessing' stamp: ''!
instanceVariableNames: someStrings

!CypressClassStructure methodsFor: 'converting' stamp: ''!
instanceVariablesString

!CypressClassStructure methodsFor: 'accessing' stamp: ''!
isClassExtension

!CypressClassStructure methodsFor: 'accessing' stamp: ''!
isClassExtension: aBoolean

!CypressClassStructure methodsFor: 'accessing' stamp: ''!
name

!CypressClassStructure methodsFor: 'accessing' stamp: ''!
name: aString

!CypressClassStructure methodsFor: 'converting' stamp: ''!
poolDictionariesString

!CypressClassStructure methodsFor: 'accessing' stamp: ''!
poolDictionaryNames

!CypressClassStructure methodsFor: 'accessing' stamp: ''!
poolDictionaryNames: someStrings

!CypressClassStructure methodsFor: 'accessing' stamp: ''!
subclassType

!CypressClassStructure methodsFor: 'accessing' stamp: ''!
subclassType: aString

!CypressClassStructure methodsFor: 'accessing' stamp: ''!
superclassName

!CypressClassStructure methodsFor: 'accessing' stamp: ''!
superclassName: aString

CypressStructure subclass: #CypressMethodStructure
	instanceVariableNames: 'source isMetaclass classStructure'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cypress-Structure'!

!CypressMethodStructure class methodsFor: 'instance creation' stamp: ''!
fromMethodDefinition: methodDefinition

!CypressMethodStructure methodsFor: 'converting' stamp: ''!
asCypressMethodDefinition

!CypressMethodStructure methodsFor: 'accessing' stamp: ''!
category

!CypressMethodStructure methodsFor: 'accessing' stamp: ''!
category: aString

!CypressMethodStructure methodsFor: 'accessing' stamp: ''!
classStructure

!CypressMethodStructure methodsFor: 'accessing' stamp: ''!
classStructure: aCypressClassStructure

!CypressMethodStructure methodsFor: 'initialization' stamp: ''!
fromMethodDefinition: methodDefinition

!CypressMethodStructure methodsFor: 'accessing' stamp: ''!
isMetaclass

!CypressMethodStructure methodsFor: 'accessing' stamp: ''!
isMetaclass: aBoolean

!CypressMethodStructure methodsFor: 'accessing' stamp: ''!
selector

!CypressMethodStructure methodsFor: 'accessing' stamp: ''!
selector: aString

!CypressMethodStructure methodsFor: 'accessing' stamp: ''!
source

!CypressMethodStructure methodsFor: 'accessing' stamp: ''!
source: aString

CypressStructure subclass: #CypressPackageStructure
	instanceVariableNames: 'classes extensions'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cypress-Structure'!

!CypressPackageStructure class methodsFor: 'instance creation' stamp: ''!
fileOutsForPackagesNamed: someNames

!CypressPackageStructure class methodsFor: 'instance creation' stamp: ''!
fromPackage: aCypressPackageDefinition

!CypressPackageStructure methodsFor: 'accessing' stamp: ''!
classes

!CypressPackageStructure methodsFor: 'accessing' stamp: ''!
classesInFileInOrder

!CypressPackageStructure methodsFor: 'accessing' stamp: ''!
classesWithInitializers

!CypressPackageStructure methodsFor: 'accessing' stamp: ''!
extensions

!CypressPackageStructure methodsFor: 'filing out - private' stamp: ''!
fileOut: aString implementationsFrom: someClassStructures on: aStream

!CypressPackageStructure methodsFor: 'filing out - private' stamp: ''!
fileOut: aString methods: someMethodStructures on: aStream

!CypressPackageStructure methodsFor: 'filing out - private' stamp: ''!
fileOut: aString methodsPreambleFor: classStructure on: aStream

!CypressPackageStructure methodsFor: 'filing out - private' stamp: ''!
fileOutClassDeclaration: classStructure on: aStream

!CypressPackageStructure methodsFor: 'filing out - private' stamp: ''!
fileOutClassDeclarationsOn: aStream

!CypressPackageStructure methodsFor: 'filing out - private' stamp: ''!
fileOutClassesOn: aStream

!CypressPackageStructure methodsFor: 'filing out - private' stamp: ''!
fileOutClassesPreambleOn: aStream

!CypressPackageStructure methodsFor: 'filing out - private' stamp: ''!
fileOutClassImplementationsOn: aStream

!CypressPackageStructure methodsFor: 'filing out - private' stamp: ''!
fileOutClassInitializerFor: classStructure on: aStream

!CypressPackageStructure methodsFor: 'filing out - private' stamp: ''!
fileOutClassInitializersOn: aStream

!CypressPackageStructure methodsFor: 'filing out - private' stamp: ''!
fileOutClassInitializersPostambleOn: aStream

!CypressPackageStructure methodsFor: 'filing out - private' stamp: ''!
fileOutClassInitializersPreambleOn: aStream

!CypressPackageStructure methodsFor: 'filing out - private' stamp: ''!
fileOutExtensionImplementationsOn: aStream

!CypressPackageStructure methodsFor: 'filing out - private' stamp: ''!
fileOutExtensionsOn: aStream

!CypressPackageStructure methodsFor: 'filing out - private' stamp: ''!
fileOutExtensionsPreambleOn: aStream

!CypressPackageStructure methodsFor: 'filing out - private' stamp: ''!
fileOutMethod: methodStructure on: aStream

!CypressPackageStructure methodsFor: 'filing out - private' stamp: ''!
fileOutMethods: someMethodStructures on: aStream

!CypressPackageStructure methodsFor: 'filing out' stamp: ''!
fileOutOn: aStream

!CypressPackageStructure methodsFor: 'filing out - private' stamp: ''!
fileOutPackagePostambleOn: aStream

!CypressPackageStructure methodsFor: 'filing out - private' stamp: ''!
fileOutPackagePreambleOn: aStream

!CypressPackageStructure methodsFor: 'filing out - private' stamp: ''!
fileOutPreambleType: aString for: classStructure on: aStream

!CypressPackageStructure methodsFor: 'filing out - private' stamp: ''!
fileOutType: aString implementationOf: classStructure on: aStream

!CypressPackageStructure methodsFor: 'initialization' stamp: ''!
fromPackage: aCypressPackageDefinition

!CypressPackageStructure methodsFor: 'accessing' stamp: ''!
packageExtension

!CypressPackageStructure methodsFor: 'accessing' stamp: ''!
packageExtensionOr: aBlock

!CypressPackageStructure methodsFor: 'accessing' stamp: ''!
packageName

!CypressPackageStructure methodsFor: 'accessing' stamp: ''!
packageStructure

!CypressPackageStructure methodsFor: 'snapshotting' stamp: ''!
snapshot

!CypressStructure class methodsFor: 'instance creation' stamp: ''!
named: aString

!CypressStructure methodsFor: 'accessing' stamp: ''!
name

!CypressStructure methodsFor: 'accessing' stamp: ''!
name: aString 

!CypressStructure methodsFor: 'accessing' stamp: ''!
packageStructure

!CypressStructure methodsFor: 'accessing' stamp: ''!
packageStructure: aCypressPackageStructure

!CypressStructure methodsFor: 'printing' stamp: ''!
printDetailsOn: aStream

!CypressStructure methodsFor: 'accessing' stamp: ''!
properties

!CypressStructure methodsFor: 'accessing' stamp: ''!
properties: aDictionary