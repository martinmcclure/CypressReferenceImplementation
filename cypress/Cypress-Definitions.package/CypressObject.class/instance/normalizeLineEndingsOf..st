"
notice: Copyright 2013,2016 GemTalk Systems, LLC. Open source under the MIT license.
category: converting
"
normalizeLineEndingsOf: aString
	"Answer a copy of aString with the line endings normalized to
	 correspond to the current platform, regardless of how they were
	 saved. For example, Squeak uses CR and would normalize with
	 #withSqueakLineEndings, for example."

	^self class normalizeLineEndingsOf: aString.
