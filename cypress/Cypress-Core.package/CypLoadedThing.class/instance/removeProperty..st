"
notice: Copyright 2013,2016 GemTalk Systems, LLC. Open source under the MIT license.
category: accessing
"
removeProperty: propertyName

	self markPackageDirty.
	^properties removeKey: propertyName ifAbsent: [AbsentToken]