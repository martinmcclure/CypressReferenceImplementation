"
notice: Copyright 2013,2016 GemTalk Systems, LLC. Open source under the MIT license.
category: private
"
definitionsFor: loadedThings

	| result |
	result := Dictionary new: loadedThings size.
	loadedThings
		do: [:loadedThing | result at: loadedThing key put: loadedThing asDefinition].
	^result