"
notice: Copyright 2013,2016 GemTalk Systems, LLC. Open source under the MIT license.
category: private-initialization
"
privateInitializeFromText: aString
	"Calculate host and path from a file URL in String format.
	Some malformed formats are allowed and interpreted by guessing."

	| schemeName pathString bare i |
	bare := aString trimSeparators.
	schemeName := CypressUrl schemeNameForString: bare.
	(schemeName isNil or: [schemeName ~= self schemeName])
		ifTrue: 
			[host := ''.
			pathString := bare]
		ifFalse: 
			["First remove schemeName and colon"
			bare := bare copyFrom: schemeName size + 2 to: bare size.
			"A proper file URL then has two slashes before host,
			A malformed URL is interpreted as using syntax file:<path>."
			(bare indexOfSubCollection: '//') = 1
				ifTrue: 
					[i := bare indexOf: $/ startingAt: 3.
					i = 0
						ifTrue: 
							[host := bare copyFrom: 3 to: bare size.
							pathString := '']
						ifFalse: 
							[host := bare copyFrom: 3 to: i - 1.
							pathString := bare copyFrom: host size + 3 to: bare size]]
				ifFalse: 
					[host := ''.
					pathString := bare]].
	self initializeFromPathString: pathString