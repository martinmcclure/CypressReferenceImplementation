"
notice: Copyright 2013,2016 GemTalk Systems, LLC. Open source under the MIT license.
category: private
"
readClassPropertiesFromDirectoryEntries: entries

	| properties |
	properties := disk
				readStreamFor: (entries detect: [:entry | self isPropertiesFilePath: entry]
						ifNone: [Dictionary new])
				do: [:fileStream | CypressJsonParser parseStream: fileStream].
	self sortVariablesOf: properties.
	^properties