"
notice: Copyright 2013,2016 GemTalk Systems, LLC. Open source under the MIT license.
category: queries
"
existingPackageNamed: aName

	^self existingPackageNamed: aName ifAbsent: [AbsentToken]