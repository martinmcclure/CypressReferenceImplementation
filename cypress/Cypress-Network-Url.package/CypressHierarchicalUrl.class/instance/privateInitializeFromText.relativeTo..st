"
notice: Copyright 2013,2016 GemTalk Systems, LLC. Open source under the MIT license.
category: parsing
"
privateInitializeFromText: aString relativeTo: aUrl

	| remainder ind basePath |
	remainder := aString.
	"set the scheme"
	schemeName := aUrl schemeName.

	"a leading // means the authority is specified, meaning it is absolute"
	(remainder indexOfSubCollection: '//') = 1
		ifTrue: [^self privateInitializeFromText: aString].

	"otherwise, use the same authority"
	authority := aUrl authority.
	port := aUrl port.
	username := aUrl username.
	password := aUrl password.

	"get the query"
	ind := remainder indexOf: $?.
	ind > 0
		ifTrue: 
			[query := remainder copyFrom: ind + 1 to: remainder size.
			remainder := remainder copyFrom: 1 to: ind - 1].

	"get the path"
	(remainder indexOfSubCollection: '/') = 1
		ifTrue: [basePath := #()]
		ifFalse: [basePath := aUrl path].
	path := self privateParsePath: remainder relativeTo: basePath
