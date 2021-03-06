"
| path packages fileOuts |
packages := #('Cypress-Definitions' 'Cypress-Mocks' 'Cypress-Structure' 'Cypress-Tests' 'Cypress-GemStoneFileServer').
path := 'C:\CypressReferenceImplementation\'.
fileOuts := GBSM currentSession
		evaluate: 'CypressPackageDefinition fileOutsForPackagesNamed: self'
		context: packages.
fileOuts keysAndValuesDo: [:packageName :fileOut |
	(Filename named: path, packageName, '.gs') writeStream
		nextPutAll: fileOut;
		close
].
"
"
CypressPackageWriter 
	writePackageStructure: (CypressPackageStructure fromPackage: (CypressPackageDefinition named: 'Cypress-Mocks')) 
	to: '/opt/git/CypressReferenceImplementation/'
"
"
CypressPackageReader 
	readPackageStructureFrom: '/opt/git/CypressReferenceImplementation/Cypress-Mocks.package'
"
"
| path packages fileOuts |
packages := #('Cypress-Definitions' 'Cypress-Mocks' 'Cypress-Structure' 'Cypress-Tests' 'Cypress-GemStoneFileServer' 'Cypress-Comparison').
path := '/opt/git/CypressReferenceImplementation/'.
packages do: [:each |
	CypressPackageWriter 
		writePackageStructure: (CypressPackageStructure fromPackage: (CypressPackageDefinition named: each)) 
		to: path.
].
fileOuts := CypressPackageDefinition fileOutsForPackagesNamed: packages.
fileOuts keysAndValuesDo: [:packageName :fileOut |
	(GsFile openWriteOnServer: path, packageName, '.gs')
		nextPutAll: fileOut;
		close
].
"