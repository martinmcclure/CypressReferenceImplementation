"
notice: Copyright 2013,2016 GemTalk Systems, LLC. Open source under the MIT license.
category: parsing
"
privateParsePath: remainder relativeTo: basePath

	| nextTok s parsedPath |
	s := remainder readStream.
	parsedPath := OrderedCollection new.
	parsedPath addAll: basePath.
	parsedPath isEmpty ifFalse: [parsedPath removeLast].
	
	[s peek = $/ ifTrue: [s next].
	nextTok := WriteStreamPortable on: String new.
	[s atEnd or: [s peek = $/]] whileFalse: [nextTok nextPut: s next].
	nextTok := self decodeHttpEscapesOf: nextTok contents.
	nextTok = '..'
		ifTrue: [parsedPath size > 0 ifTrue: [parsedPath removeLast]]
		ifFalse: [nextTok ~= '.' ifTrue: [parsedPath add: nextTok]].
	s atEnd]
			whileFalse.
	parsedPath isEmpty ifTrue: [parsedPath add: ''].
	^parsedPath
