"
notice: Copyright 2013,2016 GemTalk Systems, LLC. Open source under the MIT license.
category: properties
"
key
	"Answer an object that can be used to uniquely identify myself in the context of my container."

	^self propertyAt: 'name' ifAbsent: [nil]