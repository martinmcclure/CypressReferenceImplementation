"
notice: Copyright 2013,2016 GemTalk Systems, LLC. Open source under the MIT license.
category: private - applying
"
setupClassVariableDictionaries

	classesWithClassVariableChanges
		do: [:each | each makeTemporaryClassIn: tempSymbols]