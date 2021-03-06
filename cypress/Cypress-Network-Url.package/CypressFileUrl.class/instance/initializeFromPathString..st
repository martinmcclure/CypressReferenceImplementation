"
notice: Copyright 2013,2016 GemTalk Systems, LLC. Open source under the MIT license.
category: private-initialization
"
initializeFromPathString: aPathString
	"<aPathString> is a file path as a String.
	We construct a path collection using various heuristics."

	| pathString hasDriveLetter |
	pathString := aPathString.
	pathString isEmpty ifTrue: [pathString := '/'].
	"Copy without empty string preceeding first / or between duplicated /s."
	path := ((pathString subStrings: '/') copyWithout: '')
				collect: [:token | self decodeHttpEscapesOf: token].

	"A path like 'C:' refers in practice to 'c:/'"
	(pathString last = $/
		or: [(hasDriveLetter := self firstPartIsDriveLetter) and: [path size = 1]])
			ifTrue: [path add: ''].

	"Decide if we are absolute by checking for leading $/ or
	beginning with drive letter. Smarts for other OSes?"
	self isAbsolute: ((pathString at: 1) = $/
				or: [hasDriveLetter ifNil: [self firstPartIsDriveLetter]])
