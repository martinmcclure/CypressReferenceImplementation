"
notice: Copyright 2013,2016 GemTalk Systems, LLC. Open source under the MIT license.
category: support-definitionBuilding
"
definitionOfSimpleClassNamed: name

	^CypClassDefinition
		withProperties: (self propertiesForSimpleClassNamed: name)
		classMethodDefinitions: (self sillyClassMethodsForClassNamed: name)
		instanceMethodDefinitions: (self accessorMethodsForSimpleClassNamed: name)