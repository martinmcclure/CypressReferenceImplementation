loading
loadAdditions: somePatchOperations
	"Load class definitions first, then method definitions."

	somePatchOperations
		do: [:each | self loadClassDefinition: each];
		do: [:each | self loadMethodDefinition: each].