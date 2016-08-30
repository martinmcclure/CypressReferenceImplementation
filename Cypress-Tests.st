SystemOrganization addCategory: 'Cypress-Tests'!

TestCase subclass: #CypressAbstractTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cypress-Tests'!

!CypressAbstractTest class methodsFor: 'testing' stamp: ''!
isAbstract

!CypressAbstractTest methodsFor: 'private' stamp: ''!
baseDefinitions

!CypressAbstractTest methodsFor: 'private' stamp: ''!
targetDefinitions

CypressAbstractTest subclass: #CypressDefinitionTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cypress-Tests'!

!CypressDefinitionTest methodsFor: 'tests' stamp: ''!
testClassDefinition

!CypressDefinitionTest methodsFor: 'tests' stamp: ''!
testDictionaryOfDefinitions

!CypressDefinitionTest methodsFor: 'tests' stamp: ''!
testEquality

!CypressDefinitionTest methodsFor: 'tests' stamp: ''!
testMethodDefinition

!CypressDefinitionTest methodsFor: 'tests' stamp: ''!
testNameEquality

!CypressDefinitionTest methodsFor: 'tests' stamp: ''!
testPrintString

CypressAbstractTest subclass: #CypressExtensionsTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cypress-Tests'!

!CypressExtensionsTest methodsFor: 'tests' stamp: ''!
test_beginsWith_

!CypressExtensionsTest methodsFor: 'tests' stamp: ''!
test_copyWithoutSuffix_

!CypressExtensionsTest methodsFor: 'tests' stamp: ''!
test_copyWithoutSuffix_or_

!CypressExtensionsTest methodsFor: 'tests' stamp: ''!
test_difference_

!CypressExtensionsTest methodsFor: 'tests' stamp: ''!
test_endsWith_

!CypressExtensionsTest methodsFor: 'tests' stamp: ''!
test_findString_startingAt_caseSensitive_

!CypressExtensionsTest methodsFor: 'tests' stamp: ''!
test_gather_

!CypressExtensionsTest methodsFor: 'tests' stamp: ''!
test_indexOfAnyOf_startingAt_

!CypressExtensionsTest methodsFor: 'tests' stamp: ''!
test_indexOfAnyOf_startingAt_ifAbsent_

!CypressExtensionsTest methodsFor: 'tests' stamp: ''!
test_intersection_

!CypressExtensionsTest methodsFor: 'tests' stamp: ''!
test_parseSelectorFrom_

!CypressExtensionsTest methodsFor: 'tests' stamp: ''!
test_streamContents_

!CypressExtensionsTest methodsFor: 'tests' stamp: ''!
test_withUnixLineEndings

!CypressExtensionsTest methodsFor: 'utility' stamp: ''!
unixLinesFrom: aString

CypressAbstractTest subclass: #CypressLoaderTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cypress-Tests'!

!CypressLoaderTest methodsFor: 'utility' stamp: ''!
erroneousClassDefinitions

!CypressLoaderTest methodsFor: 'running' stamp: ''!
tearDown

!CypressLoaderTest methodsFor: 'tests' stamp: ''!
testLoad

!CypressLoaderTest methodsFor: 'tests' stamp: ''!
testLoaderWithClassDefinitionError

!CypressLoaderTest methodsFor: 'tests' stamp: ''!
testLoaderWithUnloadable

!CypressLoaderTest methodsFor: 'utility' stamp: ''!
unloadableDefinitions

CypressAbstractTest subclass: #CypressPackageManagerTest
	instanceVariableNames: 'currentManager repositoriesToCleanUp classesToCleanUp methodsToCleanUp categoriesToCleanUp'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cypress-Tests'!

!CypressPackageManagerTest methodsFor: 'private' stamp: ''!
addClassNamed: className under: superClass to: aSymbolDictionary inCatgeory: aString

!CypressPackageManagerTest methodsFor: 'private' stamp: ''!
addMethodNamed: selector body: bodyString toClass: aClass inCategory: aString

!CypressPackageManagerTest methodsFor: 'private' stamp: ''!
categoryToCleanUp: aSymbol from: aClass

!CypressPackageManagerTest methodsFor: 'private' stamp: ''!
classToCleanUp: aClass from: aSymbolDictionary

!CypressPackageManagerTest methodsFor: 'private' stamp: ''!
classToCleanUpNamed: className from: aSymbolDictionary

!CypressPackageManagerTest methodsFor: 'set up / teardown' stamp: ''!
cleanUpCategories

!CypressPackageManagerTest methodsFor: 'set up / teardown' stamp: ''!
cleanUpClasses

!CypressPackageManagerTest methodsFor: 'set up / teardown' stamp: ''!
cleanUpMethods

!CypressPackageManagerTest methodsFor: 'set up / teardown' stamp: ''!
cleanUpRepositories

!CypressPackageManagerTest methodsFor: 'private' stamp: ''!
createEmptyManager

!CypressPackageManagerTest methodsFor: 'private' stamp: ''!
createFilesFor: aDictionary

!CypressPackageManagerTest methodsFor: 'private' stamp: ''!
createFileTreeCompatibleTestRepoNamed: aString

!CypressPackageManagerTest methodsFor: 'private' stamp: ''!
createFileTreeReadOnlyTestRepoNamed: aString

!CypressPackageManagerTest methodsFor: 'private' stamp: ''!
createManagerFromImage

!CypressPackageManagerTest methodsFor: 'private' stamp: ''!
createManagerWithUnknownPackages: someNames

!CypressPackageManagerTest methodsFor: 'private' stamp: ''!
createTestRepoNamed: aString

!CypressPackageManagerTest methodsFor: 'private' stamp: ''!
currentPackageInformationGroups

!CypressPackageManagerTest methodsFor: 'expected results' stamp: ''!
cypressFormatXYPackageDirectoryStructure

!CypressPackageManagerTest methodsFor: 'expected results' stamp: ''!
fileTreeFormatXYPackageDirectoryStructure

!CypressPackageManagerTest methodsFor: 'private' stamp: ''!
methodToCleanUp: aCompiledMethod

!CypressPackageManagerTest methodsFor: 'expected results' stamp: ''!
readOnlyFileTreeFormatXYPackageDirectoryStructure

!CypressPackageManagerTest methodsFor: 'private' stamp: ''!
repositoryToCleanUp: aRepository

!CypressPackageManagerTest methodsFor: 'set up / teardown' stamp: ''!
setUp

!CypressPackageManagerTest methodsFor: 'set up / teardown' stamp: ''!
tearDown

!CypressPackageManagerTest methodsFor: 'tests' stamp: ''!
testAttachingNewCypressRepositoryToUnknownImagePackages

!CypressPackageManagerTest methodsFor: 'tests' stamp: ''!
testCreatingAndRetrievingNamedPackageManager

!CypressPackageManagerTest methodsFor: 'tests' stamp: ''!
testCreatingNewCypressRepository

!CypressPackageManagerTest methodsFor: 'tests' stamp: ''!
testCypressUrls

!CypressPackageManagerTest methodsFor: 'tests' stamp: ''!
testDetectingChangedImagePackage

!CypressPackageManagerTest methodsFor: 'tests' stamp: ''!
testInitialPopulationOfPackageInformation

!CypressPackageManagerTest methodsFor: 'tests' stamp: ''!
testKnowingPackagesFromExistingRepository

!CypressPackageManagerTest methodsFor: 'tests - loading - To Do' stamp: ''!
testLoadingPackageBranchFromRepository

!CypressPackageManagerTest methodsFor: 'tests' stamp: ''!
testLoadingPackageFromCypressRepository

!CypressPackageManagerTest methodsFor: 'tests' stamp: ''!
testLoadingPackageFromFileTreeRepository

!CypressPackageManagerTest methodsFor: 'tests - GemStone fileouts - Future' stamp: ''!
testLoadingPackageFromGemStoneFileoutRepository

!CypressPackageManagerTest methodsFor: 'tests - loading - To Do' stamp: ''!
testLoadingPackageWithGlobalExtensionWhenNotSystemUser

!CypressPackageManagerTest methodsFor: 'tests' stamp: ''!
testRemovingRepositoryFromPackage

!CypressPackageManagerTest methodsFor: 'tests' stamp: ''!
testSavingChangedImagePackageToCypressRepository

!CypressPackageManagerTest methodsFor: 'tests' stamp: ''!
testSavingChangedImagePackageToFileTreeReadOnlyRepository

!CypressPackageManagerTest methodsFor: 'tests' stamp: ''!
testSavingChangedImagePackageToFileTreeRepository

!CypressPackageManagerTest methodsFor: 'tests - GemStone fileouts - Future' stamp: ''!
testSavingChangedImagePackageToGemStoneFileoutRepository

CypressAbstractTest subclass: #CypressPatchTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cypress-Tests'!

!CypressPatchTest methodsFor: 'private' stamp: ''!
baseTargetPatch

!CypressPatchTest methodsFor: 'tests' stamp: ''!
testDictionaryOfPatchOperations

!CypressPatchTest methodsFor: 'tests' stamp: ''!
testPatch

!CypressPatchTest methodsFor: 'tests' stamp: ''!
testPatchOperationEquality

CypressAbstractTest subclass: #CypressReferenceTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cypress-Tests'!

!CypressReferenceTest methodsFor: 'running' stamp: ''!
assert: aString parsesToPackageName: packageName author: authorId branch: branchId version: versionNumber

!CypressReferenceTest methodsFor: 'testing' stamp: ''!
testAuthorAlone

!CypressReferenceTest methodsFor: 'testing' stamp: ''!
testAuthorAndVersionOnly

!CypressReferenceTest methodsFor: 'testing' stamp: ''!
testBranchAfterAuthorIsNotABranch

!CypressReferenceTest methodsFor: 'testing' stamp: ''!
testBranchAlone

!CypressReferenceTest methodsFor: 'testing' stamp: ''!
testBranchAndAuthorOnly

!CypressReferenceTest methodsFor: 'testing' stamp: ''!
testBranchAndVersionOnly

!CypressReferenceTest methodsFor: 'testing' stamp: ''!
testBranchAuthorAndVersionOnly

!CypressReferenceTest methodsFor: 'testing' stamp: ''!
testEmptyString

!CypressReferenceTest methodsFor: 'testing' stamp: ''!
testPackageAlone

!CypressReferenceTest methodsFor: 'testing' stamp: ''!
testPackageAndAuthorOnly

!CypressReferenceTest methodsFor: 'testing' stamp: ''!
testPackageAndBranchOnly

!CypressReferenceTest methodsFor: 'testing' stamp: ''!
testPackageAndVersionOnly

!CypressReferenceTest methodsFor: 'testing' stamp: ''!
testPackageAuthorAndVersionOnly

!CypressReferenceTest methodsFor: 'testing' stamp: ''!
testPackageBranchAndAuthorOnly

!CypressReferenceTest methodsFor: 'testing' stamp: ''!
testPackageBranchAndVersionOnly

!CypressReferenceTest methodsFor: 'testing' stamp: ''!
testPackageBranchAuthorAndVersion

!CypressReferenceTest methodsFor: 'testing' stamp: ''!
testPunctuationOnly

!CypressReferenceTest methodsFor: 'testing' stamp: ''!
testVersionAlone

!CypressReferenceTest methodsFor: 'testing' stamp: ''!
testVersionShouldParseComplexName

CypressAbstractTest subclass: #CypressSnapshotTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cypress-Tests'!

!CypressSnapshotTest methodsFor: 'tests' stamp: ''!
testExtensionsOnlySnapshot

!CypressSnapshotTest methodsFor: 'tests' stamp: ''!
testSnapshot

!CypressSnapshotTest methodsFor: 'tests' stamp: ''!
testSnapshotEquality

CypressAbstractTest subclass: #CypressStructureTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cypress-Tests'!

!CypressStructureTest methodsFor: 'private' stamp: ''!
compileJSON: aJsonString

!CypressStructureTest methodsFor: 'private' stamp: ''!
sampleJson

!CypressStructureTest methodsFor: 'tests' stamp: ''!
testPackageStructureFromPackage

!CypressStructureTest methodsFor: 'tests' stamp: ''!
testPropertyDictionaryRead

!CypressStructureTest methodsFor: 'tests' stamp: ''!
testPropertyDictionaryWrite