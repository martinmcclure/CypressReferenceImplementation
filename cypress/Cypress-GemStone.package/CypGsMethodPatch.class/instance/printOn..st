"
notice: Copyright 2013,2016 GemTalk Systems, LLC. Open source under the MIT license.
category: printing
"
printOn: aStream

	super printOn: aStream.
	aStream
		nextPutAll: ' for ';
		nextPutAll: classDefinition key.
	isMeta ifTrue: [aStream nextPutAll: ' class'].
	aStream
		nextPutAll: '>>';
		nextPutAll: methodDefinition key