"
notice: Copyright 2013,2016 GemTalk Systems, LLC. Open source under the MIT license.
category: private
"
addMethodDefinition: aMethodDefinition to: aDictionary

	| selector |
	selector := aMethodDefinition propertyAt: 'selector'.
	(aDictionary includesKey: selector)
		ifTrue: [self error: 'Duplicate selector in behavior'].
	aDictionary at: selector put: aMethodDefinition